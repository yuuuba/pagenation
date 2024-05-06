require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative 'models/book'
require_relative 'config/db'

#ここ？
set :database, { adapter: 'sqlite3', database: 'books.db' }

# Book一覧
get '/books' do
  '本一覧'

  book = Book.new(params)
  book.save
  erb :books
end
