
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utrace {scalar_t__ resume; } ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int TASK_TRACED ;
 scalar_t__ UTRACE_REPORT ;
 int __set_task_state (struct task_struct*,int ) ;
 scalar_t__ likely (scalar_t__) ;
 int set_notify_resume (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ task_is_stopped (struct task_struct*) ;
 int task_is_traced (struct task_struct*) ;

__attribute__((used)) static bool utrace_do_stop(struct task_struct *target, struct utrace *utrace)
{
 if (task_is_stopped(target)) {




  spin_lock_irq(&target->sighand->siglock);
  if (likely(task_is_stopped(target)))
   __set_task_state(target, TASK_TRACED);
  spin_unlock_irq(&target->sighand->siglock);
 } else if (utrace->resume > UTRACE_REPORT) {
  utrace->resume = UTRACE_REPORT;
  set_notify_resume(target);
 }

 return task_is_traced(target);
}
