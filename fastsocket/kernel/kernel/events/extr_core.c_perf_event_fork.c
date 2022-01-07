
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int perf_event_task (struct task_struct*,int *,int) ;

void perf_event_fork(struct task_struct *task)
{
 perf_event_task(task, ((void*)0), 1);
}
