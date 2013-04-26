class Article < ActiveRecord::Base

	belongs_to :category


	scope :active, where('active = ?', true)
	scope :alphabetical, order('name')

	validates_presence_of :title
	validates_presence_of :content
end
