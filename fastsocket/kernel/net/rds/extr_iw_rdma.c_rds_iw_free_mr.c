
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_iw_mr_pool {int max_free_pinned; int max_items; int flush_worker; int dirty_count; int free_pinned; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ m_sg; } ;
struct rds_iw_mr {TYPE_2__ mapping; TYPE_3__* device; } ;
struct TYPE_6__ {struct rds_iw_mr_pool* mr_pool; } ;


 int atomic_read (int *) ;
 int in_interrupt () ;
 scalar_t__ likely (int) ;
 int queue_work (int ,int *) ;
 int rds_iw_flush_mr_pool (struct rds_iw_mr_pool*,int ) ;
 int rds_iw_free_fastreg (struct rds_iw_mr_pool*,struct rds_iw_mr*) ;
 int rds_wq ;
 int rdsdebug (char*,int ) ;

void rds_iw_free_mr(void *trans_private, int invalidate)
{
 struct rds_iw_mr *ibmr = trans_private;
 struct rds_iw_mr_pool *pool = ibmr->device->mr_pool;

 rdsdebug("RDS/IW: free_mr nents %u\n", ibmr->mapping.m_sg.len);
 if (!pool)
  return;


 rds_iw_free_fastreg(pool, ibmr);


 if (atomic_read(&pool->free_pinned) >= pool->max_free_pinned
  || atomic_read(&pool->dirty_count) >= pool->max_items / 10)
  queue_work(rds_wq, &pool->flush_worker);

 if (invalidate) {
  if (likely(!in_interrupt())) {
   rds_iw_flush_mr_pool(pool, 0);
  } else {


   queue_work(rds_wq, &pool->flush_worker);
  }
 }
}
