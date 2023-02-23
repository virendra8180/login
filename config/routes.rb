Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'user/create'
  get 'user/new'
  get 'user/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/signup' => 'user#new'
  post '/users' => 'user#create'
  get '/' => 'user#index'
  resources :books
  get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
