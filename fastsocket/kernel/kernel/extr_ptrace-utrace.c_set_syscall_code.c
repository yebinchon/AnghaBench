
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_context {int options; int stop_code; } ;


 int PTRACE_EVENT_SYSCALL ;
 int PTRACE_O_TRACESYSGOOD ;
 int set_stop_code (struct ptrace_context*,int ) ;

__attribute__((used)) static inline void set_syscall_code(struct ptrace_context *ctx)
{
 set_stop_code(ctx, PTRACE_EVENT_SYSCALL);
 if (ctx->options & PTRACE_O_TRACESYSGOOD)
  ctx->stop_code |= 0x80;
}
