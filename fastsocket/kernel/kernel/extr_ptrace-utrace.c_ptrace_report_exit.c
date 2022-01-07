
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {long eventmsg; } ;
struct TYPE_2__ {int signal; } ;


 int PTRACE_EVENT_EXIT ;
 int UTRACE_STOP ;
 int WARN_ON (int) ;
 TYPE_1__* current ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 scalar_t__ ptrace_event_pending (struct ptrace_context*) ;
 int set_stop_code (struct ptrace_context*,int ) ;
 int signal_group_exit (int ) ;

__attribute__((used)) static u32 ptrace_report_exit(u32 action, struct utrace_engine *engine,
         long orig_code, long *code)
{
 struct ptrace_context *ctx = ptrace_context(engine);

 WARN_ON(ptrace_event_pending(ctx) &&
  !signal_group_exit(current->signal));

 set_stop_code(ctx, PTRACE_EVENT_EXIT);
 ctx->eventmsg = *code;

 return UTRACE_STOP;
}
