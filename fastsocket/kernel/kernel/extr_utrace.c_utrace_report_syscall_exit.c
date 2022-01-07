
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int INIT_REPORT (int ) ;
 int REPORT (struct task_struct*,struct utrace*,int *,int ,int ,struct pt_regs*) ;
 int SYSCALL_EXIT ;
 int UTRACE_EVENT (int ) ;
 struct task_struct* current ;
 int report ;
 int report_syscall_exit ;
 struct utrace* task_utrace_struct (struct task_struct*) ;

void utrace_report_syscall_exit(struct pt_regs *regs)
{
 struct task_struct *task = current;
 struct utrace *utrace = task_utrace_struct(task);
 INIT_REPORT(report);

 REPORT(task, utrace, &report, UTRACE_EVENT(SYSCALL_EXIT),
        report_syscall_exit, regs);
}
