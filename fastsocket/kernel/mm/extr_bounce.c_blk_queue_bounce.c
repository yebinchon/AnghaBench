
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int bounce_gfp; } ;
struct bio {int dummy; } ;
typedef int mempool_t ;


 int BUG_ON (int) ;
 int GFP_DMA ;
 int __blk_queue_bounce (struct request_queue*,struct bio**,int *,int) ;
 int bio_has_data (struct bio*) ;
 scalar_t__ blk_max_pfn ;
 int * isa_page_pool ;
 int must_snapshot_stable_pages (struct request_queue*,struct bio*) ;
 int * page_pool ;
 scalar_t__ queue_bounce_pfn (struct request_queue*) ;

void blk_queue_bounce(struct request_queue *q, struct bio **bio_orig)
{
 int must_bounce;
 mempool_t *pool;




 if (!bio_has_data(*bio_orig))
  return;

 must_bounce = must_snapshot_stable_pages(q, *bio_orig);






 if (!(q->bounce_gfp & GFP_DMA)) {
  if (queue_bounce_pfn(q) >= blk_max_pfn && !must_bounce)
   return;
  pool = page_pool;
 } else {
  BUG_ON(!isa_page_pool);
  pool = isa_page_pool;
 }




 __blk_queue_bounce(q, bio_orig, pool, must_bounce);
}
