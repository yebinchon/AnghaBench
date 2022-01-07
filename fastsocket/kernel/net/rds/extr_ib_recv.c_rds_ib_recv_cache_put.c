
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_refill_cache {int xfer; int percpu; } ;
struct rds_ib_cache_head {scalar_t__ count; struct list_head* first; } ;
struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ RDS_IB_RECYCLE_BATCH_COUNT ;
 struct list_head* cmpxchg (int *,int *,struct list_head*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_splice_entire_tail (struct list_head*,struct list_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct rds_ib_cache_head* per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;
 struct list_head* xchg (int *,int *) ;

__attribute__((used)) static void rds_ib_recv_cache_put(struct list_head *new_item,
     struct rds_ib_refill_cache *cache)
{
 unsigned long flags;
 struct rds_ib_cache_head *chp;
 struct list_head *old;

 local_irq_save(flags);

 chp = per_cpu_ptr(cache->percpu, smp_processor_id());
 if (!chp->first)
  INIT_LIST_HEAD(new_item);
 else
  list_add_tail(new_item, chp->first);
 chp->first = new_item;
 chp->count++;

 if (chp->count < RDS_IB_RECYCLE_BATCH_COUNT)
  goto end;







 do {
  old = xchg(&cache->xfer, ((void*)0));
  if (old)
   list_splice_entire_tail(old, chp->first);
  old = cmpxchg(&cache->xfer, ((void*)0), chp->first);
 } while (old);

 chp->first = ((void*)0);
 chp->count = 0;
end:
 local_irq_restore(flags);
}
