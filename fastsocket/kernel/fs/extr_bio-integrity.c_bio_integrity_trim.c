
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {unsigned int tuple_size; } ;
struct bio_integrity_payload {scalar_t__ bip_sector; } ;
struct bio {int bi_bdev; struct bio_integrity_payload* bi_integrity; } ;


 int BIO_CLONED ;
 int BUG_ON (int) ;
 struct blk_integrity* bdev_get_integrity (int ) ;
 int bio_flagged (struct bio*,int ) ;
 unsigned int bio_integrity_hw_sectors (struct blk_integrity*,unsigned int) ;
 int bio_integrity_mark_head (struct bio_integrity_payload*,unsigned int) ;
 int bio_integrity_mark_tail (struct bio_integrity_payload*,unsigned int) ;

void bio_integrity_trim(struct bio *bio, unsigned int offset,
   unsigned int sectors)
{
 struct bio_integrity_payload *bip = bio->bi_integrity;
 struct blk_integrity *bi = bdev_get_integrity(bio->bi_bdev);
 unsigned int nr_sectors;

 BUG_ON(bip == ((void*)0));
 BUG_ON(bi == ((void*)0));
 BUG_ON(!bio_flagged(bio, BIO_CLONED));

 nr_sectors = bio_integrity_hw_sectors(bi, sectors);
 bip->bip_sector = bip->bip_sector + offset;
 bio_integrity_mark_head(bip, offset * bi->tuple_size);
 bio_integrity_mark_tail(bip, sectors * bi->tuple_size);
}
