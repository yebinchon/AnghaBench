
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine {int dummy; } ;
struct task_struct {int exit_state; } ;


 scalar_t__ IS_ERR (struct utrace_engine*) ;
 int PTR_ERR (struct utrace_engine*) ;
 int WARN_ON (int) ;
 struct utrace_engine* ptrace_attach_engine (struct task_struct*) ;
 int ptrace_set_events (struct task_struct*,struct utrace_engine*,int) ;
 int utrace_engine_put (struct utrace_engine*) ;

__attribute__((used)) static int ptrace_attach_task(struct task_struct *tracee, int options)
{
 struct utrace_engine *engine;
 int err;

 engine = ptrace_attach_engine(tracee);
 if (IS_ERR(engine))
  return PTR_ERR(engine);




 err = ptrace_set_events(tracee, engine, options);
 WARN_ON(err && !tracee->exit_state);
 utrace_engine_put(engine);
 return 0;
}
