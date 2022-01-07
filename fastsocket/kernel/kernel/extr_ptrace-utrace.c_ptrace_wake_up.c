
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct utrace_engine {int dummy; } ;
struct task_struct {TYPE_1__* signal; } ;
typedef enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;
struct TYPE_4__ {scalar_t__ stop_code; } ;
struct TYPE_3__ {int flags; } ;


 int SIGNAL_STOP_STOPPED ;
 int UTRACE_REPORT ;
 scalar_t__ lock_task_sighand (struct task_struct*,unsigned long*) ;
 TYPE_2__* ptrace_context (struct utrace_engine*) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;
 int utrace_control (struct task_struct*,struct utrace_engine*,int) ;

__attribute__((used)) static int ptrace_wake_up(struct task_struct *tracee,
    struct utrace_engine *engine,
    enum utrace_resume_action action,
    bool force_wakeup)
{
 if (force_wakeup) {
  unsigned long flags;





  if (lock_task_sighand(tracee, &flags)) {
   tracee->signal->flags &= ~SIGNAL_STOP_STOPPED;
   unlock_task_sighand(tracee, &flags);
  }
 }

 if (action != UTRACE_REPORT)
  ptrace_context(engine)->stop_code = 0;

 return utrace_control(tracee, engine, action);
}
