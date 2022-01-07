
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int min_alloc_order; int chunks; int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct gen_pool* kmalloc_node (int,int ,int) ;
 int spin_lock_init (int *) ;

struct gen_pool *gen_pool_create(int min_alloc_order, int nid)
{
 struct gen_pool *pool;

 pool = kmalloc_node(sizeof(struct gen_pool), GFP_KERNEL, nid);
 if (pool != ((void*)0)) {
  spin_lock_init(&pool->lock);
  INIT_LIST_HEAD(&pool->chunks);
  pool->min_alloc_order = min_alloc_order;
 }
 return pool;
}
