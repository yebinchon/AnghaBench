
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct linux_binprm {int dummy; } ;
struct linux_binfmt {int dummy; } ;


 int EXEC ;
 int INIT_REPORT (int ) ;
 int REPORT (struct task_struct*,struct utrace*,int *,int ,int ,struct linux_binfmt*,struct linux_binprm*,struct pt_regs*) ;
 int UTRACE_EVENT (int ) ;
 struct task_struct* current ;
 int report ;
 int report_exec ;
 struct utrace* task_utrace_struct (struct task_struct*) ;

void utrace_report_exec(struct linux_binfmt *fmt, struct linux_binprm *bprm,
   struct pt_regs *regs)
{
 struct task_struct *task = current;
 struct utrace *utrace = task_utrace_struct(task);
 INIT_REPORT(report);

 REPORT(task, utrace, &report, UTRACE_EVENT(EXEC),
        report_exec, fmt, bprm, regs);
}
