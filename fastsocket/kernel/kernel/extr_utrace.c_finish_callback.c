
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_report {int result; } ;
struct utrace_engine {int * ops; } ;
struct utrace {int * reporting; } ;
struct task_struct {int dummy; } ;


 int UTRACE_RESUME_MASK ;
 int finish_callback_report (struct task_struct*,struct utrace*,struct utrace_report*,struct utrace_engine*,int ) ;
 int might_sleep () ;
 int utrace_detached_ops ;
 int utrace_resume_action (int) ;

__attribute__((used)) static bool finish_callback(struct task_struct *task, struct utrace *utrace,
       struct utrace_report *report,
       struct utrace_engine *engine,
       u32 ret)
{
 report->result = ret & ~UTRACE_RESUME_MASK;
 finish_callback_report(task, utrace, report, engine,
          utrace_resume_action(ret));
 utrace->reporting = ((void*)0);
 might_sleep();

 return engine->ops == &utrace_detached_ops;
}
