
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_report {int result; int action; int resume_action; int detaches; int spurious; } ;
struct utrace {scalar_t__ resume; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int REPORT_CALLBACKS (int ,struct task_struct*,struct utrace*,struct utrace_report*,int ,int ,int,int ,struct pt_regs*) ;
 int SYSCALL_ENTRY ;
 int UTRACE_EVENT (int ) ;
 scalar_t__ UTRACE_REPORT ;
 int UTRACE_RESUME ;
 int UTRACE_STOP ;
 int UTRACE_SYSCALL_ABORT ;
 int UTRACE_SYSCALL_RESUMED ;
 int _reverse ;
 int engine ;
 scalar_t__ fatal_signal_pending (struct task_struct*) ;
 int finish_report (struct task_struct*,struct utrace*,struct utrace_report*,int) ;
 int report_syscall_entry ;
 int start_report (struct utrace*) ;
 int utrace_stop (struct task_struct*,struct utrace*,int) ;

__attribute__((used)) static u32 do_report_syscall_entry(struct pt_regs *regs,
       struct task_struct *task,
       struct utrace *utrace,
       struct utrace_report *report,
       u32 resume_report)
{
 start_report(utrace);
 REPORT_CALLBACKS(_reverse, task, utrace, report,
    UTRACE_EVENT(SYSCALL_ENTRY), report_syscall_entry,
    resume_report | report->result | report->action,
    engine, regs);
 finish_report(task, utrace, report, 0);

 if (report->action != UTRACE_STOP)
  return 0;

 utrace_stop(task, utrace, report->resume_action);

 if (fatal_signal_pending(task)) {




  report->result = UTRACE_SYSCALL_ABORT;
 } else if (utrace->resume <= UTRACE_REPORT) {
  report->detaches = 0;
  report->spurious = 1;
  report->action = report->resume_action = UTRACE_RESUME;
  return UTRACE_SYSCALL_RESUMED;
 }

 return 0;
}
