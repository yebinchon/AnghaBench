
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_mr_pool {int free_pinned; int item_count; } ;


 int BUG_ON (int ) ;
 int atomic_read (int *) ;
 int flush_workqueue (int ) ;
 int kfree (struct rds_iw_mr_pool*) ;
 int rds_iw_flush_mr_pool (struct rds_iw_mr_pool*,int) ;
 int rds_wq ;

void rds_iw_destroy_mr_pool(struct rds_iw_mr_pool *pool)
{
 flush_workqueue(rds_wq);
 rds_iw_flush_mr_pool(pool, 1);
 BUG_ON(atomic_read(&pool->item_count));
 BUG_ON(atomic_read(&pool->free_pinned));
 kfree(pool);
}
