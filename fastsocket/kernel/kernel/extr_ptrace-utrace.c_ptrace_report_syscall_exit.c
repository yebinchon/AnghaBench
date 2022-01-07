
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {int signr; int resume; } ;
struct pt_regs {int dummy; } ;


 int SIGTRAP ;
 int UTRACE_INTERRUPT ;
 int UTRACE_STOP ;
 scalar_t__ is_step_resume (int ) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 scalar_t__ ptrace_event_pending (struct ptrace_context*) ;
 int set_syscall_code (struct ptrace_context*) ;

__attribute__((used)) static u32 ptrace_report_syscall_exit(u32 action, struct utrace_engine *engine,
          struct pt_regs *regs)
{
 struct ptrace_context *ctx = ptrace_context(engine);

 if (ptrace_event_pending(ctx))
  return UTRACE_STOP;

 if (is_step_resume(ctx->resume)) {
  ctx->signr = SIGTRAP;
  return UTRACE_INTERRUPT;
 }

 set_syscall_code(ctx);
 return UTRACE_STOP;
}
