
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr_pool {int item_count; } ;


 unsigned int atomic_read (int *) ;

__attribute__((used)) static inline unsigned int rds_ib_flush_goal(struct rds_ib_mr_pool *pool, int free_all)
{
 unsigned int item_count;

 item_count = atomic_read(&pool->item_count);
 if (free_all)
  return item_count;

 return 0;
}
