
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int result; } ;


 int INIT_REPORT (TYPE_1__) ;
 scalar_t__ UTRACE_SYSCALL_ABORT ;
 struct task_struct* current ;
 scalar_t__ do_report_syscall_entry (struct pt_regs*,struct task_struct*,struct utrace*,TYPE_1__*,scalar_t__) ;
 TYPE_1__ report ;
 struct utrace* task_utrace_struct (struct task_struct*) ;
 scalar_t__ utrace_syscall_action (int ) ;

bool utrace_report_syscall_entry(struct pt_regs *regs)
{
 struct task_struct *task = current;
 struct utrace *utrace = task_utrace_struct(task);
 INIT_REPORT(report);
 u32 resume_report = 0;

 do {
  resume_report = do_report_syscall_entry(regs, task, utrace,
       &report, resume_report);
 } while (resume_report);

 return utrace_syscall_action(report.result) == UTRACE_SYSCALL_ABORT;
}
