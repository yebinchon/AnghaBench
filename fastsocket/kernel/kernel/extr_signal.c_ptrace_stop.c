
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int siginfo_t ;
struct TYPE_9__ {int exit_code; int * last_siginfo; TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_8__ {int siglock; } ;
struct TYPE_7__ {scalar_t__ group_stop_count; } ;


 int CLD_TRAPPED ;
 int TASK_RUNNING ;
 int TASK_TRACED ;
 int __set_current_state (int ) ;
 int arch_ptrace_stop (int,int *) ;
 scalar_t__ arch_ptrace_stop_needed (int,int *) ;
 TYPE_3__* current ;
 int do_notify_parent_cldstop (TYPE_3__*,int ) ;
 scalar_t__ may_ptrace_stop () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int recalc_sigpending_tsk (TYPE_3__*) ;
 int schedule () ;
 scalar_t__ sigkill_pending (TYPE_3__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;
 int try_to_freeze () ;

__attribute__((used)) static void ptrace_stop(int exit_code, int clear_code, siginfo_t *info)
{
 if (arch_ptrace_stop_needed(exit_code, info)) {
  spin_unlock_irq(&current->sighand->siglock);
  arch_ptrace_stop(exit_code, info);
  spin_lock_irq(&current->sighand->siglock);
  if (sigkill_pending(current))
   return;
 }





 if (current->signal->group_stop_count > 0)
  --current->signal->group_stop_count;

 current->last_siginfo = info;
 current->exit_code = exit_code;


 __set_current_state(TASK_TRACED);
 spin_unlock_irq(&current->sighand->siglock);
 read_lock(&tasklist_lock);
 if (may_ptrace_stop()) {
  do_notify_parent_cldstop(current, CLD_TRAPPED);






  preempt_disable();
  read_unlock(&tasklist_lock);
  preempt_enable_no_resched();
  schedule();
 } else {




  __set_current_state(TASK_RUNNING);
  if (clear_code)
   current->exit_code = 0;
  read_unlock(&tasklist_lock);
 }






 try_to_freeze();






 spin_lock_irq(&current->sighand->siglock);
 current->last_siginfo = ((void*)0);






 recalc_sigpending_tsk(current);
}
