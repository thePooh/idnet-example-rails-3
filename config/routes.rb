IdnetRails::Application.routes.draw do
  root :to => "home#index"
  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/:provider/setup", to: "sessions#setup"
  
  match "/signout" => "sessions#destroy", :as => :signout
  match '/private', to: "home#private_data", as: :private
  resources :activities, only: [:index, :create]
end
