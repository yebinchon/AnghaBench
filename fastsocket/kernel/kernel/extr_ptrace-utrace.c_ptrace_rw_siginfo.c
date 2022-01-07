
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct ptrace_context {int stop_code; TYPE_1__* siginfo; } ;
struct TYPE_4__ {int si_code; int si_uid; int si_pid; int si_signo; } ;
typedef TYPE_1__ siginfo_t ;


 int EINVAL ;
 int ESRCH ;
 int PTRACE_EVENT_MASK ;

 int SIGTRAP ;
 int get_stop_event (struct ptrace_context*) ;
 int likely (int ) ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 int memset (TYPE_1__*,int ,int) ;
 int task_is_traced (struct task_struct*) ;
 int task_pid_vnr (struct task_struct*) ;
 int task_uid (struct task_struct*) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static int ptrace_rw_siginfo(struct task_struct *tracee,
    struct ptrace_context *ctx,
    siginfo_t *info, bool write)
{
 unsigned long flags;
 int err;

 switch (get_stop_event(ctx)) {
 case 0:
  return -EINVAL;

 case 128:
  err = -ESRCH;
  if (lock_task_sighand(tracee, &flags)) {
   if (likely(task_is_traced(tracee))) {
    if (write)
     *ctx->siginfo = *info;
    else
     *info = *ctx->siginfo;
    err = 0;
   }
   unlock_task_sighand(tracee, &flags);
  }

  return err;

 default:
  if (!write) {
   memset(info, 0, sizeof(*info));
   info->si_signo = SIGTRAP;
   info->si_code = ctx->stop_code & PTRACE_EVENT_MASK;
   info->si_pid = task_pid_vnr(tracee);
   info->si_uid = task_uid(tracee);
  }

  return 0;
 }
}
