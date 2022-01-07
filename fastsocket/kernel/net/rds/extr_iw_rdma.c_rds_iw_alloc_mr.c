
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_iw_mr_pool {scalar_t__ max_items; int item_count; } ;
struct TYPE_2__ {struct rds_iw_mr* m_mr; int m_list; int m_lock; } ;
struct rds_iw_mr {TYPE_1__ mapping; } ;
struct rds_iw_device {struct rds_iw_mr_pool* mr_pool; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct rds_iw_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int kfree (struct rds_iw_mr*) ;
 struct rds_iw_mr* kzalloc (int,int ) ;
 int rds_iw_destroy_fastreg (struct rds_iw_mr_pool*,struct rds_iw_mr*) ;
 int rds_iw_flush_mr_pool (struct rds_iw_mr_pool*,int ) ;
 int rds_iw_init_fastreg (struct rds_iw_mr_pool*,struct rds_iw_mr*) ;
 struct rds_iw_mr* rds_iw_reuse_fmr (struct rds_iw_mr_pool*) ;
 int rds_iw_stats_inc (int ) ;
 int s_iw_rdma_mr_alloc ;
 int s_iw_rdma_mr_pool_depleted ;
 int s_iw_rdma_mr_pool_wait ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rds_iw_mr *rds_iw_alloc_mr(struct rds_iw_device *rds_iwdev)
{
 struct rds_iw_mr_pool *pool = rds_iwdev->mr_pool;
 struct rds_iw_mr *ibmr = ((void*)0);
 int err = 0, iter = 0;

 while (1) {
  ibmr = rds_iw_reuse_fmr(pool);
  if (ibmr)
   return ibmr;
  if (atomic_inc_return(&pool->item_count) <= pool->max_items)
   break;

  atomic_dec(&pool->item_count);

  if (++iter > 2) {
   rds_iw_stats_inc(s_iw_rdma_mr_pool_depleted);
   return ERR_PTR(-EAGAIN);
  }


  rds_iw_stats_inc(s_iw_rdma_mr_pool_wait);
  rds_iw_flush_mr_pool(pool, 0);
 }

 ibmr = kzalloc(sizeof(*ibmr), GFP_KERNEL);
 if (!ibmr) {
  err = -ENOMEM;
  goto out_no_cigar;
 }

 spin_lock_init(&ibmr->mapping.m_lock);
 INIT_LIST_HEAD(&ibmr->mapping.m_list);
 ibmr->mapping.m_mr = ibmr;

 err = rds_iw_init_fastreg(pool, ibmr);
 if (err)
  goto out_no_cigar;

 rds_iw_stats_inc(s_iw_rdma_mr_alloc);
 return ibmr;

out_no_cigar:
 if (ibmr) {
  rds_iw_destroy_fastreg(pool, ibmr);
  kfree(ibmr);
 }
 atomic_dec(&pool->item_count);
 return ERR_PTR(err);
}
