class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    "#{self.object.title} - #{self.object.description[0..49]} - directed by: #{self.object.director}"
  end
end
