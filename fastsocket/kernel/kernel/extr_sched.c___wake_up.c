
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;


 int __wake_up_common (TYPE_1__*,unsigned int,int,int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void __wake_up(wait_queue_head_t *q, unsigned int mode,
   int nr_exclusive, void *key)
{
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 __wake_up_common(q, mode, nr_exclusive, 0, key);
 spin_unlock_irqrestore(&q->lock, flags);
}
