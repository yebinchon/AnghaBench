
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; } ;


 int __rt_mutex_adjust_prio (struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rt_mutex_adjust_prio(struct task_struct *task)
{
 unsigned long flags;

 spin_lock_irqsave(&task->pi_lock, flags);
 __rt_mutex_adjust_prio(task);
 spin_unlock_irqrestore(&task->pi_lock, flags);
}
