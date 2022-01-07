
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int mm; } ;


 int PF_MCE_EARLY ;
 int PF_MCE_PROCESS ;
 int sysctl_memory_failure_early_kill ;

__attribute__((used)) static int task_early_kill(struct task_struct *tsk)
{
 if (!tsk->mm)
  return 0;
 if (tsk->flags & PF_MCE_PROCESS)
  return !!(tsk->flags & PF_MCE_EARLY);
 return sysctl_memory_failure_early_kill;
}
