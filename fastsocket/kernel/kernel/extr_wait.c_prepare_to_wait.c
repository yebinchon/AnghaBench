
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int task_list; int flags; } ;
typedef TYPE_1__ wait_queue_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ wait_queue_head_t ;


 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ list_empty (int *) ;
 int set_current_state (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
prepare_to_wait(wait_queue_head_t *q, wait_queue_t *wait, int state)
{
 unsigned long flags;

 wait->flags &= ~WQ_FLAG_EXCLUSIVE;
 spin_lock_irqsave(&q->lock, flags);
 if (list_empty(&wait->task_list))
  __add_wait_queue(q, wait);
 set_current_state(state);
 spin_unlock_irqrestore(&q->lock, flags);
}
