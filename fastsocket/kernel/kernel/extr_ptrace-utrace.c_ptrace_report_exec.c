
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {int options; } ;
struct pt_regs {int dummy; } ;
struct linux_binprm {int dummy; } ;
struct linux_binfmt {int dummy; } ;


 int PTRACE_EVENT_EXEC ;
 int PTRACE_O_TRACEEXEC ;
 int SIGTRAP ;
 int UTRACE_RESUME ;
 int UTRACE_STOP ;
 int WARN_ON (int ) ;
 int current ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int ptrace_event_pending (struct ptrace_context*) ;
 int send_sig (int ,int ,int ) ;
 int set_stop_code (struct ptrace_context*,int ) ;

__attribute__((used)) static u32 ptrace_report_exec(u32 action, struct utrace_engine *engine,
         const struct linux_binfmt *fmt,
         const struct linux_binprm *bprm,
         struct pt_regs *regs)
{
 struct ptrace_context *ctx = ptrace_context(engine);

 WARN_ON(ptrace_event_pending(ctx));

 if (!(ctx->options & PTRACE_O_TRACEEXEC)) {



  send_sig(SIGTRAP, current, 0);
  return UTRACE_RESUME;
 }

 set_stop_code(ctx, PTRACE_EVENT_EXEC);
 return UTRACE_STOP;
}
