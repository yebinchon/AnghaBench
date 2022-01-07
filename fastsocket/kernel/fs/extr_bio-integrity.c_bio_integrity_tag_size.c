
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {unsigned int tag_size; unsigned int sector_size; } ;
struct bio {unsigned int bi_size; int bi_bdev; } ;


 int BUG_ON (int) ;
 struct blk_integrity* bdev_get_integrity (int ) ;

unsigned int bio_integrity_tag_size(struct bio *bio)
{
 struct blk_integrity *bi = bdev_get_integrity(bio->bi_bdev);

 BUG_ON(bio->bi_size == 0);

 return bi->tag_size * (bio->bi_size / bi->sector_size);
}
