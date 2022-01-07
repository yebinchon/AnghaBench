
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {unsigned long options; } ;


 int CLONE ;
 int EXEC ;
 int EXIT ;
 unsigned long PTRACE_O_TRACEEXIT ;
 int QUIESCE ;
 unsigned long UTRACE_EVENT (int ) ;
 unsigned long UTRACE_EVENT_SIGNAL_ALL ;
 struct ptrace_context* ptrace_context (struct utrace_engine*) ;
 int utrace_set_events (struct task_struct*,struct utrace_engine*,unsigned long) ;

__attribute__((used)) static inline int ptrace_set_events(struct task_struct *target,
     struct utrace_engine *engine,
     unsigned long options)
{
 struct ptrace_context *ctx = ptrace_context(engine);




 unsigned long events = UTRACE_EVENT(QUIESCE) | UTRACE_EVENT(CLONE) |
          UTRACE_EVENT(EXEC) | UTRACE_EVENT_SIGNAL_ALL;

 ctx->options = options;
 if (options & PTRACE_O_TRACEEXIT)
  events |= UTRACE_EVENT(EXIT);

 return utrace_set_events(target, engine, events);
}
