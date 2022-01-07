
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int resume; int signr; int options; scalar_t__ siginfo; } ;
typedef enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;


 int IS_ERR (struct utrace_engine*) ;


 int PTRACE_O_DETACHED ;
 int SEND_SIG_PRIV ;
 int UTRACE_DETACH ;
 int UTRACE_RESUME ;
 int get_stop_event (struct ptrace_context*) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 struct utrace_engine* ptrace_lookup_engine (struct task_struct*) ;
 int ptrace_wake_up (struct task_struct*,struct utrace_engine*,int,int) ;
 int send_sig_info (int,int ,struct task_struct*) ;
 scalar_t__ unlikely (int ) ;
 int utrace_barrier_uninterruptible (struct task_struct*,struct utrace_engine*) ;
 int utrace_engine_put (struct utrace_engine*) ;

__attribute__((used)) static void ptrace_detach_task(struct task_struct *tracee, int sig)
{




 bool explicit = (sig >= 0);
 struct utrace_engine *engine = ptrace_lookup_engine(tracee);
 enum utrace_resume_action action = UTRACE_DETACH;
 struct ptrace_context *ctx;

 if (unlikely(IS_ERR(engine)))
  return;

 ctx = ptrace_context(engine);

 if (!explicit) {
  int err;





  ctx->resume = UTRACE_DETACH;
  err = utrace_barrier_uninterruptible(tracee, engine);

  if (!err && ctx->siginfo) {
   action = UTRACE_RESUME;
  }

 } else if (sig) {
  switch (get_stop_event(ctx)) {
  case 128:
   send_sig_info(sig, SEND_SIG_PRIV, tracee);
   break;

  case 129:
   ctx->signr = sig;
   ctx->resume = UTRACE_DETACH;
   action = UTRACE_RESUME;
   break;
  }
 }

 ptrace_wake_up(tracee, engine, action, explicit);

 if (action != UTRACE_DETACH)
  ctx->options = PTRACE_O_DETACHED;

 utrace_engine_put(engine);
}
