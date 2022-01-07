
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_group_cputimer {int lock; scalar_t__ running; } ;
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {struct thread_group_cputimer cputimer; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_process_timers(struct task_struct *tsk)
{
 struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
 unsigned long flags;

 if (!cputimer->running)
  return;

 spin_lock_irqsave(&cputimer->lock, flags);
 cputimer->running = 0;
 spin_unlock_irqrestore(&cputimer->lock, flags);
}
