
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_cputime {int dummy; } ;
struct thread_group_cputimer {int running; int lock; struct task_cputime cputime; } ;
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {struct thread_group_cputimer cputimer; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int thread_group_cputime (struct task_struct*,struct task_cputime*) ;
 int update_gt_cputime (struct task_cputime*,struct task_cputime*) ;

void thread_group_cputimer(struct task_struct *tsk, struct task_cputime *times)
{
 struct thread_group_cputimer *cputimer = &tsk->signal->cputimer;
 struct task_cputime sum;
 unsigned long flags;

 spin_lock_irqsave(&cputimer->lock, flags);
 if (!cputimer->running) {
  cputimer->running = 1;






  thread_group_cputime(tsk, &sum);
  update_gt_cputime(&cputimer->cputime, &sum);
 }
 *times = cputimer->cputime;
 spin_unlock_irqrestore(&cputimer->lock, flags);
}
