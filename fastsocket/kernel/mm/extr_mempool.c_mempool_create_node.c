
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int min_nr; int curr_nr; void* pool_data; void* (* alloc ) (int,void*) ;int * free; int wait; int lock; void* elements; } ;
typedef TYPE_1__ mempool_t ;
typedef int mempool_free_t ;
typedef void* (* mempool_alloc_t ) (int,void*) ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int add_element (TYPE_1__*,void*) ;
 int free_pool (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 int kfree (TYPE_1__*) ;
 void* kmalloc_node (int,int,int) ;
 int spin_lock_init (int *) ;
 void* stub1 (int,void*) ;
 scalar_t__ unlikely (int) ;

mempool_t *mempool_create_node(int min_nr, mempool_alloc_t *alloc_fn,
   mempool_free_t *free_fn, void *pool_data, int node_id)
{
 mempool_t *pool;
 pool = kmalloc_node(sizeof(*pool), GFP_KERNEL | __GFP_ZERO, node_id);
 if (!pool)
  return ((void*)0);
 pool->elements = kmalloc_node(min_nr * sizeof(void *),
     GFP_KERNEL, node_id);
 if (!pool->elements) {
  kfree(pool);
  return ((void*)0);
 }
 spin_lock_init(&pool->lock);
 pool->min_nr = min_nr;
 pool->pool_data = pool_data;
 init_waitqueue_head(&pool->wait);
 pool->alloc = alloc_fn;
 pool->free = free_fn;




 while (pool->curr_nr < pool->min_nr) {
  void *element;

  element = pool->alloc(GFP_KERNEL, pool->pool_data);
  if (unlikely(!element)) {
   free_pool(pool);
   return ((void*)0);
  }
  add_element(pool, element);
 }
 return pool;
}
