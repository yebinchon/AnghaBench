
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_maps; } ;
struct rds_ib_mr_pool {int max_free_pinned; int max_items; int flush_worker; int dirty_count; int free_pinned; int free_list; int drop_list; TYPE_1__ fmr_attr; } ;
struct rds_ib_mr {scalar_t__ remap_count; int sg_len; int llnode; struct rds_ib_device* device; } ;
struct rds_ib_device {struct rds_ib_mr_pool* mr_pool; } ;


 int atomic_add (int ,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int in_interrupt () ;
 scalar_t__ likely (int) ;
 int llist_add (int *,int *) ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 int rds_ib_flush_mr_pool (struct rds_ib_mr_pool*,int ,int *) ;
 int rdsdebug (char*,int ) ;
 int schedule_delayed_work (int *,int) ;

void rds_ib_free_mr(void *trans_private, int invalidate)
{
 struct rds_ib_mr *ibmr = trans_private;
 struct rds_ib_device *rds_ibdev = ibmr->device;
 struct rds_ib_mr_pool *pool = rds_ibdev->mr_pool;

 rdsdebug("RDS/IB: free_mr nents %u\n", ibmr->sg_len);


 if (ibmr->remap_count >= pool->fmr_attr.max_maps)
  llist_add(&ibmr->llnode, &pool->drop_list);
 else
  llist_add(&ibmr->llnode, &pool->free_list);

 atomic_add(ibmr->sg_len, &pool->free_pinned);
 atomic_inc(&pool->dirty_count);


 if (atomic_read(&pool->free_pinned) >= pool->max_free_pinned ||
     atomic_read(&pool->dirty_count) >= pool->max_items / 10)
  schedule_delayed_work(&pool->flush_worker, 10);

 if (invalidate) {
  if (likely(!in_interrupt())) {
   rds_ib_flush_mr_pool(pool, 0, ((void*)0));
  } else {


   schedule_delayed_work(&pool->flush_worker, 10);
  }
 }

 rds_ib_dev_put(rds_ibdev);
}
