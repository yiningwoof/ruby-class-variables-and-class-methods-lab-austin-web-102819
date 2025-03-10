class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        # @@genres.push(genre) if @@genres.include?(genre) == false
        @@artists.push(artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_count = {}
        @@genres.each{ |genre| @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1}
        @@genre_count
    end

    def self.artist_count
        @@artist_count = {}
        @@artists.each{ |artist| @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1}
        @@artist_count
    end
end