class CreateLandscapes < ActiveRecord::Migration[6.0]
  def change
    create_table :landscapes do |t|
      t.string :address
      t.integer :area
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
