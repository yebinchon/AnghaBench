
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {unsigned long flags; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int options; } ;


 int EIO ;
 int ESRCH ;

 int PTRACE_O_SYSEMU ;





 int SYSCALL_ENTRY ;
 int SYSCALL_EXIT ;
 int UTRACE_BLOCKSTEP ;
 unsigned long UTRACE_EVENT (int ) ;
 unsigned long UTRACE_EVENT_SYSCALL ;
 int UTRACE_RESUME ;
 int UTRACE_SINGLESTEP ;
 int arch_has_block_step () ;
 int arch_has_single_step () ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int unlikely (int) ;
 scalar_t__ utrace_set_events (struct task_struct*,struct utrace_engine*,unsigned long) ;

__attribute__((used)) static int ptrace_resume_action(struct task_struct *tracee,
    struct utrace_engine *engine, long request)
{
 struct ptrace_context *ctx = ptrace_context(engine);
 unsigned long events;
 int action;

 ctx->options &= ~PTRACE_O_SYSEMU;
 events = engine->flags & ~UTRACE_EVENT_SYSCALL;
 action = UTRACE_RESUME;

 switch (request) {

 case 132:
  if (unlikely(!arch_has_block_step()))
   return -EIO;
  action = UTRACE_BLOCKSTEP;
  events |= UTRACE_EVENT(SYSCALL_EXIT);
  break;



 case 131:
  if (unlikely(!arch_has_single_step()))
   return -EIO;
  action = UTRACE_SINGLESTEP;
  events |= UTRACE_EVENT(SYSCALL_EXIT);
  break;



 case 128:
  if (unlikely(!arch_has_single_step()))
   return -EIO;
  action = UTRACE_SINGLESTEP;
 case 129:
  ctx->options |= PTRACE_O_SYSEMU;
  events |= UTRACE_EVENT(SYSCALL_ENTRY);
  break;


 case 130:
  events |= UTRACE_EVENT_SYSCALL;
  break;

 case 133:
  break;
 default:
  return -EIO;
 }

 if (events != engine->flags &&
     utrace_set_events(tracee, engine, events))
  return -ESRCH;

 return action;
}
