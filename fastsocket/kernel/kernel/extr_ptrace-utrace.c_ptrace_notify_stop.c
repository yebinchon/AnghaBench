
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;


 scalar_t__ IS_ERR (struct utrace_engine*) ;
 int do_ptrace_notify_stop (int ,struct task_struct*) ;
 int ptrace_context (struct utrace_engine*) ;
 struct utrace_engine* ptrace_lookup_engine (struct task_struct*) ;
 int utrace_engine_put (struct utrace_engine*) ;

void ptrace_notify_stop(struct task_struct *tracee)
{
 struct utrace_engine *engine = ptrace_lookup_engine(tracee);

 if (IS_ERR(engine))
  return;

 do_ptrace_notify_stop(ptrace_context(engine), tracee);
 utrace_engine_put(engine);
}
