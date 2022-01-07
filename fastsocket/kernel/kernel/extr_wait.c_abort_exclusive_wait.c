
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int task_list; } ;
typedef TYPE_1__ wait_queue_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ wait_queue_head_t ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int __wake_up_locked_key (TYPE_2__*,unsigned int,void*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (TYPE_2__*) ;

void abort_exclusive_wait(wait_queue_head_t *q, wait_queue_t *wait,
   unsigned int mode, void *key)
{
 unsigned long flags;

 __set_current_state(TASK_RUNNING);
 spin_lock_irqsave(&q->lock, flags);
 if (!list_empty(&wait->task_list))
  list_del_init(&wait->task_list);
 else if (waitqueue_active(q))
  __wake_up_locked_key(q, mode, key);
 spin_unlock_irqrestore(&q->lock, flags);
}
