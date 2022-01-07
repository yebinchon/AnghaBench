
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int task_list; } ;
typedef TYPE_1__ wait_queue_t ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ wait_queue_head_t ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int list_del_init (int *) ;
 int list_empty_careful (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void finish_wait(wait_queue_head_t *q, wait_queue_t *wait)
{
 unsigned long flags;

 __set_current_state(TASK_RUNNING);
 if (!list_empty_careful(&wait->task_list)) {
  spin_lock_irqsave(&q->lock, flags);
  list_del_init(&wait->task_list);
  spin_unlock_irqrestore(&q->lock, flags);
 }
}
