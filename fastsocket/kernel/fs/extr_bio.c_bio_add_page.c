
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio {int bi_bdev; } ;


 int __bio_add_page (struct request_queue*,struct bio*,struct page*,unsigned int,unsigned int,int ) ;
 struct request_queue* bdev_get_queue (int ) ;
 int queue_max_sectors (struct request_queue*) ;

int bio_add_page(struct bio *bio, struct page *page, unsigned int len,
   unsigned int offset)
{
 struct request_queue *q = bdev_get_queue(bio->bi_bdev);
 return __bio_add_page(q, bio, page, len, offset, queue_max_sectors(q));
}
