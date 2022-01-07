
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_refill_cache {struct list_head* ready; int xfer; } ;
struct list_head {int dummy; } ;


 int list_splice_entire_tail (struct list_head*,struct list_head*) ;
 struct list_head* xchg (int *,int *) ;

__attribute__((used)) static void rds_ib_cache_xfer_to_ready(struct rds_ib_refill_cache *cache)
{
 struct list_head *tmp;

 tmp = xchg(&cache->xfer, ((void*)0));
 if (tmp) {
  if (cache->ready)
   list_splice_entire_tail(tmp, cache->ready);
  else
   cache->ready = tmp;
 }
}
