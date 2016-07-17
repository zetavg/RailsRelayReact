Rails.application.routes.draw do
  post :graphql, to: "graphql#query"
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
