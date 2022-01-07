
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_desc {int dummy; } ;
struct perf_sched {unsigned long nr_tasks; struct task_desc** tasks; } ;


 int add_sched_event_wakeup (struct perf_sched*,struct task_desc*,int ,struct task_desc*) ;

__attribute__((used)) static void add_cross_task_wakeups(struct perf_sched *sched)
{
 struct task_desc *task1, *task2;
 unsigned long i, j;

 for (i = 0; i < sched->nr_tasks; i++) {
  task1 = sched->tasks[i];
  j = i + 1;
  if (j == sched->nr_tasks)
   j = 0;
  task2 = sched->tasks[j];
  add_sched_event_wakeup(sched, task1, 0, task2);
 }
}
