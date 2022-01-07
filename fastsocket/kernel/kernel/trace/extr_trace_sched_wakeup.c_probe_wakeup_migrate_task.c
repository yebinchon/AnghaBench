
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int wakeup_current_cpu ;
 struct task_struct* wakeup_task ;

__attribute__((used)) static void probe_wakeup_migrate_task(struct task_struct *task, int cpu)
{
 if (task != wakeup_task)
  return;

 wakeup_current_cpu = cpu;
}
