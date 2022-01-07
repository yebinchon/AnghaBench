
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_queue_t ;
struct TYPE_4__ {int wait; int curr_nr; int lock; int pool_data; void* (* alloc ) (int,int ) ;} ;
typedef TYPE_1__ mempool_t ;
typedef int gfp_t ;


 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int __GFP_IO ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_WAIT ;
 int finish_wait (int *,int *) ;
 int init_wait (int *) ;
 int io_schedule_timeout (int) ;
 scalar_t__ likely (int ) ;
 int might_sleep_if (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 void* remove_element (TYPE_1__*) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* stub1 (int,int ) ;

void * mempool_alloc(mempool_t *pool, gfp_t gfp_mask)
{
 void *element;
 unsigned long flags;
 wait_queue_t wait;
 gfp_t gfp_temp;

 might_sleep_if(gfp_mask & __GFP_WAIT);

 gfp_mask |= __GFP_NOMEMALLOC;
 gfp_mask |= __GFP_NORETRY;
 gfp_mask |= __GFP_NOWARN;

 gfp_temp = gfp_mask & ~(__GFP_WAIT|__GFP_IO);

repeat_alloc:

 element = pool->alloc(gfp_temp, pool->pool_data);
 if (likely(element != ((void*)0)))
  return element;

 spin_lock_irqsave(&pool->lock, flags);
 if (likely(pool->curr_nr)) {
  element = remove_element(pool);
  spin_unlock_irqrestore(&pool->lock, flags);
  return element;
 }
 spin_unlock_irqrestore(&pool->lock, flags);


 if (!(gfp_mask & __GFP_WAIT))
  return ((void*)0);


 gfp_temp = gfp_mask;
 init_wait(&wait);
 prepare_to_wait(&pool->wait, &wait, TASK_UNINTERRUPTIBLE);
 smp_mb();
 if (!pool->curr_nr) {




  io_schedule_timeout(5*HZ);
 }
 finish_wait(&pool->wait, &wait);

 goto repeat_alloc;
}
