
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ curr_nr; scalar_t__ min_nr; int pool_data; int (* free ) (void*,int ) ;int lock; int wait; } ;
typedef TYPE_1__ mempool_t ;


 int add_element (TYPE_1__*,void*) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (void*,int ) ;
 scalar_t__ unlikely (int ) ;
 int wake_up (int *) ;

void mempool_free(void *element, mempool_t *pool)
{
 unsigned long flags;

 if (unlikely(element == ((void*)0)))
  return;

 smp_mb();
 if (pool->curr_nr < pool->min_nr) {
  spin_lock_irqsave(&pool->lock, flags);
  if (pool->curr_nr < pool->min_nr) {
   add_element(pool, element);
   spin_unlock_irqrestore(&pool->lock, flags);
   wake_up(&pool->wait);
   return;
  }
  spin_unlock_irqrestore(&pool->lock, flags);
 }
 pool->free(element, pool->pool_data);
}
