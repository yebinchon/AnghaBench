
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ prio; int pi_lock; struct rt_mutex_waiter* pi_blocked_on; } ;
struct TYPE_2__ {scalar_t__ prio; } ;
struct rt_mutex_waiter {TYPE_1__ list_entry; } ;


 int get_task_struct (struct task_struct*) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int ,int *,int *,struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rt_mutex_adjust_pi(struct task_struct *task)
{
 struct rt_mutex_waiter *waiter;
 unsigned long flags;

 spin_lock_irqsave(&task->pi_lock, flags);

 waiter = task->pi_blocked_on;
 if (!waiter || waiter->list_entry.prio == task->prio) {
  spin_unlock_irqrestore(&task->pi_lock, flags);
  return;
 }

 spin_unlock_irqrestore(&task->pi_lock, flags);


 get_task_struct(task);
 rt_mutex_adjust_prio_chain(task, 0, ((void*)0), ((void*)0), task);
}
