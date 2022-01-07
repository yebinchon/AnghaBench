
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wait_queue_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;


 int __remove_wait_queue (TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void remove_wait_queue(wait_queue_head_t *q, wait_queue_t *wait)
{
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 __remove_wait_queue(q, wait);
 spin_unlock_irqrestore(&q->lock, flags);
}
