Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
end
