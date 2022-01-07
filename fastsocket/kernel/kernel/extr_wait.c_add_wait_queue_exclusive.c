
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ wait_queue_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ wait_queue_head_t ;


 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue_tail (TYPE_2__*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void add_wait_queue_exclusive(wait_queue_head_t *q, wait_queue_t *wait)
{
 unsigned long flags;

 wait->flags |= WQ_FLAG_EXCLUSIVE;
 spin_lock_irqsave(&q->lock, flags);
 __add_wait_queue_tail(q, wait);
 spin_unlock_irqrestore(&q->lock, flags);
}
