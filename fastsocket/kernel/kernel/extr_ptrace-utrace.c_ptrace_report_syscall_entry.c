
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {int options; } ;
struct pt_regs {int dummy; } ;


 int PTRACE_O_SYSEMU ;
 int UTRACE_REPORT ;
 int UTRACE_RESUME ;
 int UTRACE_STOP ;
 int UTRACE_SYSCALL_ABORT ;
 int UTRACE_SYSCALL_RESUMED ;
 int UTRACE_SYSCALL_RUN ;
 int WARN_ON (int ) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int ptrace_event_pending (struct ptrace_context*) ;
 int set_syscall_code (struct ptrace_context*) ;
 scalar_t__ unlikely (int) ;
 int utrace_syscall_action (int) ;

__attribute__((used)) static u32 ptrace_report_syscall_entry(u32 action, struct utrace_engine *engine,
           struct pt_regs *regs)
{
 struct ptrace_context *ctx = ptrace_context(engine);

 if (action & UTRACE_SYSCALL_RESUMED) {




  if (unlikely(ctx->options & PTRACE_O_SYSEMU))
   return UTRACE_SYSCALL_ABORT | UTRACE_REPORT;
  return utrace_syscall_action(action) | UTRACE_RESUME;
 }

 WARN_ON(ptrace_event_pending(ctx));

 set_syscall_code(ctx);

 if (unlikely(ctx->options & PTRACE_O_SYSEMU))
  return UTRACE_SYSCALL_ABORT | UTRACE_REPORT;




 return UTRACE_SYSCALL_RUN | UTRACE_STOP;
}
