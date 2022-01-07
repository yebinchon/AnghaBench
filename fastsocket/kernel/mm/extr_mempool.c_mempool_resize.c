
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int min_nr; int curr_nr; void** elements; int lock; int pool_data; int (* free ) (void*,int ) ;void* (* alloc ) (int ,int ) ;} ;
typedef TYPE_1__ mempool_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int add_element (TYPE_1__*,void*) ;
 int kfree (void**) ;
 void** kmalloc (int,int ) ;
 int memcpy (void**,void**,int) ;
 void* remove_element (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (void*,int ) ;
 void* stub2 (int ,int ) ;
 int stub3 (void*,int ) ;
 scalar_t__ unlikely (int) ;

int mempool_resize(mempool_t *pool, int new_min_nr, gfp_t gfp_mask)
{
 void *element;
 void **new_elements;
 unsigned long flags;

 BUG_ON(new_min_nr <= 0);

 spin_lock_irqsave(&pool->lock, flags);
 if (new_min_nr <= pool->min_nr) {
  while (new_min_nr < pool->curr_nr) {
   element = remove_element(pool);
   spin_unlock_irqrestore(&pool->lock, flags);
   pool->free(element, pool->pool_data);
   spin_lock_irqsave(&pool->lock, flags);
  }
  pool->min_nr = new_min_nr;
  goto out_unlock;
 }
 spin_unlock_irqrestore(&pool->lock, flags);


 new_elements = kmalloc(new_min_nr * sizeof(*new_elements), gfp_mask);
 if (!new_elements)
  return -ENOMEM;

 spin_lock_irqsave(&pool->lock, flags);
 if (unlikely(new_min_nr <= pool->min_nr)) {

  spin_unlock_irqrestore(&pool->lock, flags);
  kfree(new_elements);
  goto out;
 }
 memcpy(new_elements, pool->elements,
   pool->curr_nr * sizeof(*new_elements));
 kfree(pool->elements);
 pool->elements = new_elements;
 pool->min_nr = new_min_nr;

 while (pool->curr_nr < pool->min_nr) {
  spin_unlock_irqrestore(&pool->lock, flags);
  element = pool->alloc(gfp_mask, pool->pool_data);
  if (!element)
   goto out;
  spin_lock_irqsave(&pool->lock, flags);
  if (pool->curr_nr < pool->min_nr) {
   add_element(pool, element);
  } else {
   spin_unlock_irqrestore(&pool->lock, flags);
   pool->free(element, pool->pool_data);
   goto out;
  }
 }
out_unlock:
 spin_unlock_irqrestore(&pool->lock, flags);
out:
 return 0;
}
