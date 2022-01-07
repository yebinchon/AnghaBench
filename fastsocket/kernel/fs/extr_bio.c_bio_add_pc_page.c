
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio {int dummy; } ;


 int __bio_add_page (struct request_queue*,struct bio*,struct page*,unsigned int,unsigned int,int ) ;
 int queue_max_hw_sectors (struct request_queue*) ;

int bio_add_pc_page(struct request_queue *q, struct bio *bio, struct page *page,
      unsigned int len, unsigned int offset)
{
 return __bio_add_page(q, bio, page, len, offset,
         queue_max_hw_sectors(q));
}
