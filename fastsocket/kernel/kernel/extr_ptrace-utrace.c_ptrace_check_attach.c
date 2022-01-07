
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_examiner {int dummy; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {scalar_t__ parent; } ;


 int ESRCH ;
 scalar_t__ IS_ERR (struct utrace_engine*) ;
 int UTRACE_STOP ;
 scalar_t__ current ;
 struct utrace_engine* ptrace_lookup_engine (struct task_struct*) ;
 int task_is_stopped_or_traced (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int utrace_control (struct task_struct*,struct utrace_engine*,int ) ;
 int utrace_engine_put (struct utrace_engine*) ;
 int utrace_freeze_stop (struct task_struct*) ;
 int utrace_prepare_examine (struct task_struct*,struct utrace_engine*,struct utrace_examiner*) ;
 int utrace_unfreeze_stop (struct task_struct*) ;

int ptrace_check_attach(struct task_struct *child, int kill)
{
 struct utrace_engine *engine;
 struct utrace_examiner exam;
 int ret = -ESRCH;

 engine = ptrace_lookup_engine(child);
 if (IS_ERR(engine))
  return ret;

 if (child->parent != current)
  goto out;

 if (unlikely(kill))
  ret = 0;

 if (!task_is_stopped_or_traced(child))
  goto out;




 utrace_freeze_stop(child);
 if (!utrace_control(child, engine, UTRACE_STOP) &&
     !utrace_prepare_examine(child, engine, &exam))
  ret = 0;
 else
  utrace_unfreeze_stop(child);

out:
 utrace_engine_put(engine);
 return ret;
}
