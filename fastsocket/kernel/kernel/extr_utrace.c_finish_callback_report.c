
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_report {int detaches; int action; int resume_action; } ;
struct utrace_engine {int * ops; } ;
struct utrace {int lock; } ;
struct task_struct {int dummy; } ;
typedef enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;


 int UTRACE_DETACH ;
 int UTRACE_STOP ;
 int clear_engine_wants_stop (struct utrace_engine*) ;
 scalar_t__ engine_wants_stop (struct utrace_engine*) ;
 int mark_engine_wants_stop (struct task_struct*,struct utrace_engine*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int utrace_detached_ops ;

__attribute__((used)) static void finish_callback_report(struct task_struct *task,
       struct utrace *utrace,
       struct utrace_report *report,
       struct utrace_engine *engine,
       enum utrace_resume_action action)
{
 if (action == UTRACE_DETACH) {
  spin_lock(&utrace->lock);
  engine->ops = &utrace_detached_ops;
  spin_unlock(&utrace->lock);
 }




 if (engine->ops == &utrace_detached_ops) {
  report->detaches = 1;
  return;
 }

 if (action < report->action)
  report->action = action;

 if (action != UTRACE_STOP) {
  if (action < report->resume_action)
   report->resume_action = action;

  if (engine_wants_stop(engine)) {
   spin_lock(&utrace->lock);
   clear_engine_wants_stop(engine);
   spin_unlock(&utrace->lock);
  }

  return;
 }

 if (!engine_wants_stop(engine)) {
  spin_lock(&utrace->lock);




  if (unlikely(engine->ops == &utrace_detached_ops))
   report->detaches = 1;
  else
   mark_engine_wants_stop(task, engine);
  spin_unlock(&utrace->lock);
 }
}
