
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {struct task_entry* next_task; } ;


 scalar_t__ highest_task_num ;
 struct task_entry* task_list ;
 int xfree (struct task_entry*) ;

void
init_task_list (void)
{
  struct task_entry *pt, *old_pt;

  pt = task_list;
  while (pt)
    {
      old_pt = pt;
      pt = pt->next_task;
      xfree (old_pt);
    };
  task_list = ((void*)0);
  highest_task_num = 0;
}
