
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int free_pinned; int item_count; int flush_worker; } ;


 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct rds_ib_mr_pool*) ;
 int rds_ib_flush_mr_pool (struct rds_ib_mr_pool*,int,int *) ;

void rds_ib_destroy_mr_pool(struct rds_ib_mr_pool *pool)
{
 cancel_delayed_work_sync(&pool->flush_worker);
 rds_ib_flush_mr_pool(pool, 1, ((void*)0));
 WARN_ON(atomic_read(&pool->item_count));
 WARN_ON(atomic_read(&pool->free_pinned));
 kfree(pool);
}
