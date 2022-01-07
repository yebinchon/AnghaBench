
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ action; int resume_action; } ;


 int EXIT ;
 int INIT_REPORT (TYPE_1__) ;
 int REPORT (struct task_struct*,struct utrace*,TYPE_1__*,int ,int ,long,long*) ;
 int UTRACE_EVENT (int ) ;
 scalar_t__ UTRACE_STOP ;
 struct task_struct* current ;
 TYPE_1__ report ;
 int report_exit ;
 struct utrace* task_utrace_struct (struct task_struct*) ;
 int utrace_stop (struct task_struct*,struct utrace*,int ) ;

void utrace_report_exit(long *exit_code)
{
 struct task_struct *task = current;
 struct utrace *utrace = task_utrace_struct(task);
 INIT_REPORT(report);
 long orig_code = *exit_code;

 REPORT(task, utrace, &report, UTRACE_EVENT(EXIT),
        report_exit, orig_code, exit_code);

 if (report.action == UTRACE_STOP)
  utrace_stop(task, utrace, report.resume_action);
}
