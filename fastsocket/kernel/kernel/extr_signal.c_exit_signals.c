
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int flags; TYPE_1__* sighand; TYPE_2__* signal; } ;
struct TYPE_4__ {int group_stop_count; int flags; } ;
struct TYPE_3__ {int siglock; } ;


 int CLD_STOPPED ;
 int PF_EXITING ;
 int SIGNAL_STOP_STOPPED ;
 int do_notify_parent_cldstop (struct task_struct*,int) ;
 struct task_struct* next_thread (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int recalc_sigpending_and_wake (struct task_struct*) ;
 scalar_t__ signal_group_exit (TYPE_2__*) ;
 int signal_pending (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 int tracehook_notify_jctl (int ,int ) ;
 scalar_t__ unlikely (int) ;

void exit_signals(struct task_struct *tsk)
{
 int group_stop = 0;
 struct task_struct *t;

 if (thread_group_empty(tsk) || signal_group_exit(tsk->signal)) {
  tsk->flags |= PF_EXITING;
  return;
 }

 spin_lock_irq(&tsk->sighand->siglock);




 tsk->flags |= PF_EXITING;
 if (!signal_pending(tsk))
  goto out;





 for (t = tsk; (t = next_thread(t)) != tsk; )
  if (!signal_pending(t) && !(t->flags & PF_EXITING))
   recalc_sigpending_and_wake(t);

 if (unlikely(tsk->signal->group_stop_count) &&
   !--tsk->signal->group_stop_count) {
  tsk->signal->flags = SIGNAL_STOP_STOPPED;
  group_stop = tracehook_notify_jctl(CLD_STOPPED, CLD_STOPPED);
 }
out:
 spin_unlock_irq(&tsk->sighand->siglock);

 if (unlikely(group_stop)) {
  read_lock(&tasklist_lock);
  do_notify_parent_cldstop(tsk, group_stop);
  read_unlock(&tasklist_lock);
 }
}
