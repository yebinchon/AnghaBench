
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; int exit_code; TYPE_1__* sighand; struct signal_struct* signal; } ;
struct signal_struct {int group_stop_count; int flags; int group_exit_code; } ;
struct TYPE_2__ {int siglock; } ;


 int CLD_STOPPED ;
 int PF_EXITING ;
 int SIGNAL_STOP_DEQUEUED ;
 int SIGNAL_STOP_STOPPED ;
 int TASK_STOPPED ;
 int __set_current_state (int ) ;
 struct task_struct* current ;
 int do_notify_parent_cldstop (struct task_struct*,int) ;
 int likely (int) ;
 struct task_struct* next_thread (struct task_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int schedule () ;
 int signal_group_exit (struct signal_struct*) ;
 int signal_wake_up (struct task_struct*,int ) ;
 int spin_unlock_irq (int *) ;
 int task_is_stopped_or_traced (struct task_struct*) ;
 int tasklist_lock ;
 int tracehook_finish_jctl () ;
 int tracehook_notify_jctl (int,int) ;
 scalar_t__ try_to_freeze () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int do_signal_stop(int signr)
{
 struct signal_struct *sig = current->signal;
 int notify;

 if (!sig->group_stop_count) {
  struct task_struct *t;

  if (!likely(sig->flags & SIGNAL_STOP_DEQUEUED) ||
      unlikely(signal_group_exit(sig)))
   return 0;




  sig->group_exit_code = signr;

  sig->group_stop_count = 1;
  for (t = next_thread(current); t != current; t = next_thread(t))





   if (!(t->flags & PF_EXITING) &&
       !task_is_stopped_or_traced(t)) {
    sig->group_stop_count++;
    signal_wake_up(t, 0);
   }
 }





 notify = sig->group_stop_count == 1 ? CLD_STOPPED : 0;
 notify = tracehook_notify_jctl(notify, CLD_STOPPED);





 if (sig->group_stop_count) {
  if (!--sig->group_stop_count)
   sig->flags = SIGNAL_STOP_STOPPED;
  current->exit_code = sig->group_exit_code;
  __set_current_state(TASK_STOPPED);
 }
 spin_unlock_irq(&current->sighand->siglock);

 if (notify) {
  read_lock(&tasklist_lock);
  do_notify_parent_cldstop(current, notify);
  read_unlock(&tasklist_lock);
 }


 do {
  schedule();
 } while (try_to_freeze());

 tracehook_finish_jctl();
 current->exit_code = 0;

 return 1;
}
