
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int options; long signr; int resume; } ;


 int EIO ;







 int PTRACE_O_TRACEVFORKDONE ;
 long PTRACE_SYSCALL ;
 int SEND_SIG_PRIV ;
 long SIGTRAP ;
 int UTRACE_INTERRUPT ;
 int UTRACE_REPORT ;
 int UTRACE_RESUME ;
 int do_ptrace_notify_stop (struct ptrace_context*,struct task_struct*) ;
 int get_stop_event (struct ptrace_context*) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int ptrace_resume_action (struct task_struct*,struct utrace_engine*,long) ;
 int ptrace_wake_up (struct task_struct*,struct utrace_engine*,int,int) ;
 int send_sig_info (long,int ,struct task_struct*) ;
 int set_stop_code (struct ptrace_context*,int) ;
 int set_syscall_code (struct ptrace_context*) ;
 int valid_signal (long) ;

__attribute__((used)) static int ptrace_resume(struct task_struct *tracee,
    struct utrace_engine *engine,
    long request, long data)
{
 struct ptrace_context *ctx = ptrace_context(engine);
 int action;

 if (!valid_signal(data))
  return -EIO;

 action = ptrace_resume_action(tracee, engine, request);
 if (action < 0)
  return action;

 switch (get_stop_event(ctx)) {
 case 129:
  if (ctx->options & PTRACE_O_TRACEVFORKDONE) {
   set_stop_code(ctx, 128);
   action = UTRACE_REPORT;
  }
  break;

 case 133:
 case 132:
 case 134:
 case 128:
  if (request == PTRACE_SYSCALL) {
   set_syscall_code(ctx);
   do_ptrace_notify_stop(ctx, tracee);
   return 0;
  }

  if (action != UTRACE_RESUME) {




   ctx->signr = SIGTRAP;
   action = UTRACE_INTERRUPT;
  }
  break;

 case 130:
  if (data)
   send_sig_info(data, SEND_SIG_PRIV, tracee);
  break;

 case 131:
  ctx->signr = data;
  break;
 }

 ctx->resume = action;
 ptrace_wake_up(tracee, engine, action, 1);
 return 0;
}
