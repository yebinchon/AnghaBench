
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int options; int eventmsg; } ;


 unsigned long CLONE_PTRACE ;
 unsigned long CLONE_UNTRACED ;
 unsigned long CLONE_VFORK ;
 unsigned long CSIGNAL ;
 int PTRACE_EVENT_CLONE ;
 int PTRACE_EVENT_FORK ;
 int PTRACE_EVENT_VFORK ;
 int PTRACE_EVENT_VFORK_DONE ;
 int PTRACE_O_TRACECLONE ;
 int PTRACE_O_TRACEFORK ;
 int PTRACE_O_TRACEVFORK ;
 int PTRACE_O_TRACEVFORKDONE ;
 unsigned long SIGCHLD ;
 int UTRACE_REPORT ;
 int UTRACE_RESUME ;
 int UTRACE_STOP ;
 int WARN_ON (int ) ;
 int ptrace_clone_attach (struct task_struct*,int) ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int ptrace_event_pending (struct ptrace_context*) ;
 int set_stop_code (struct ptrace_context*,int) ;
 int task_pid_vnr (struct task_struct*) ;

__attribute__((used)) static u32 ptrace_report_clone(u32 action, struct utrace_engine *engine,
          unsigned long clone_flags,
          struct task_struct *child)
{
 struct ptrace_context *ctx = ptrace_context(engine);
 int event = 0;

 WARN_ON(ptrace_event_pending(ctx));

 if (clone_flags & CLONE_UNTRACED) {

 } else if (clone_flags & CLONE_VFORK) {
  if (ctx->options & PTRACE_O_TRACEVFORK)
   event = PTRACE_EVENT_VFORK;
  else if (ctx->options & PTRACE_O_TRACEVFORKDONE)
   event = PTRACE_EVENT_VFORK_DONE;
 } else if ((clone_flags & CSIGNAL) != SIGCHLD) {
  if (ctx->options & PTRACE_O_TRACECLONE)
   event = PTRACE_EVENT_CLONE;
 } else if (ctx->options & PTRACE_O_TRACEFORK) {
  event = PTRACE_EVENT_FORK;
 }




 if ((event && event != PTRACE_EVENT_VFORK_DONE) ||
    (clone_flags & CLONE_PTRACE))
  ptrace_clone_attach(child, ctx->options);

 if (!event)
  return UTRACE_RESUME;

 set_stop_code(ctx, event);
 ctx->eventmsg = task_pid_vnr(child);




 if (event == PTRACE_EVENT_VFORK_DONE)
  return UTRACE_REPORT;
 else
  return UTRACE_STOP;
}
