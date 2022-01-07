
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_report {int spurious; int action; } ;
struct utrace_engine_ops {int (* report_quiesce ) (int ,struct utrace_engine*,unsigned long) ;} ;
struct utrace_engine {unsigned long flags; struct utrace_engine_ops* ops; } ;
struct utrace {struct utrace_engine* reporting; } ;
struct task_struct {int dummy; } ;


 unsigned long ENGINE_STOP ;
 int QUIESCE ;
 unsigned long UTRACE_EVENT (int ) ;
 int UTRACE_STOP ;
 scalar_t__ finish_callback (struct task_struct*,struct utrace*,struct utrace_report*,struct utrace_engine*,int ) ;
 int smp_mb () ;
 int smp_rmb () ;
 int stub1 (int ,struct utrace_engine*,unsigned long) ;

__attribute__((used)) static const struct utrace_engine_ops *start_callback(
 struct utrace *utrace, struct utrace_report *report,
 struct utrace_engine *engine, struct task_struct *task,
 unsigned long event)
{
 const struct utrace_engine_ops *ops;
 unsigned long want;
 utrace->reporting = engine;
 smp_mb();






 want = engine->flags;
 smp_rmb();
 ops = engine->ops;

 if (want & UTRACE_EVENT(QUIESCE)) {
  if (finish_callback(task, utrace, report, engine,
        (*ops->report_quiesce)(report->action,
          engine, event)))
   return ((void*)0);
  utrace->reporting = engine;
  smp_mb();
  want = engine->flags;
 }

 if (want & ENGINE_STOP)
  report->action = UTRACE_STOP;

 if (want & event) {
  report->spurious = 0;
  return ops;
 }

 utrace->reporting = ((void*)0);
 return ((void*)0);
}
