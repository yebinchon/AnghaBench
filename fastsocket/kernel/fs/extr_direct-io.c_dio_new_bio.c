
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int blkbits; int pages_in_io; scalar_t__ boundary; } ;
struct dio {int dummy; } ;
struct buffer_head {int b_bdev; } ;
typedef int sector_t ;


 int BIO_MAX_PAGES ;
 int BUG_ON (int) ;
 int bio_get_nr_vecs (int ) ;
 int dio_bio_alloc (struct dio*,struct dio_submit*,int ,int,int) ;
 int dio_bio_reap (struct dio*,struct dio_submit*) ;
 int min (int,int ) ;

__attribute__((used)) static inline int dio_new_bio(struct dio *dio, struct dio_submit *sdio,
  sector_t start_sector, struct buffer_head *map_bh)
{
 sector_t sector;
 int ret, nr_pages;

 ret = dio_bio_reap(dio, sdio);
 if (ret)
  goto out;
 sector = start_sector << (sdio->blkbits - 9);
 nr_pages = min(sdio->pages_in_io, bio_get_nr_vecs(map_bh->b_bdev));
 nr_pages = min(nr_pages, BIO_MAX_PAGES);
 BUG_ON(nr_pages <= 0);
 dio_bio_alloc(dio, sdio, map_bh->b_bdev, sector, nr_pages);
 sdio->boundary = 0;
out:
 return ret;
}
