
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utrace {int dummy; } ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int INIT_REPORT (int ) ;
 int JCTL ;
 int REPORT (struct task_struct*,struct utrace*,int *,int ,int ,int,int) ;
 int UTRACE_EVENT (int ) ;
 struct task_struct* current ;
 int report ;
 int report_jctl ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct utrace* task_utrace_struct (struct task_struct*) ;

void utrace_report_jctl(int notify, int what)
{
 struct task_struct *task = current;
 struct utrace *utrace = task_utrace_struct(task);
 INIT_REPORT(report);

 spin_unlock_irq(&task->sighand->siglock);

 REPORT(task, utrace, &report, UTRACE_EVENT(JCTL),
        report_jctl, what, notify);

 spin_lock_irq(&task->sighand->siglock);
}
