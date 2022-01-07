
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; } ;


 int rt_mutex_getprio (struct task_struct*) ;
 int rt_mutex_setprio (struct task_struct*,int) ;

__attribute__((used)) static void __rt_mutex_adjust_prio(struct task_struct *task)
{
 int prio = rt_mutex_getprio(task);

 if (task->prio != prio)
  rt_mutex_setprio(task, prio);
}
