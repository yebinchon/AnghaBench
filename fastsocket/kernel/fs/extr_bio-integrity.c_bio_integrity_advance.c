
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {unsigned int tuple_size; } ;
struct bio_integrity_payload {int dummy; } ;
struct bio {int bi_bdev; struct bio_integrity_payload* bi_integrity; } ;


 int BUG_ON (int ) ;
 struct blk_integrity* bdev_get_integrity (int ) ;
 unsigned int bio_integrity_hw_sectors (struct blk_integrity*,unsigned int) ;
 int bio_integrity_mark_head (struct bio_integrity_payload*,unsigned int) ;

void bio_integrity_advance(struct bio *bio, unsigned int bytes_done)
{
 struct bio_integrity_payload *bip = bio->bi_integrity;
 struct blk_integrity *bi = bdev_get_integrity(bio->bi_bdev);
 unsigned int nr_sectors;

 BUG_ON(bip == ((void*)0));
 BUG_ON(bi == ((void*)0));

 nr_sectors = bio_integrity_hw_sectors(bi, bytes_done >> 9);
 bio_integrity_mark_head(bip, nr_sectors * bi->tuple_size);
}
