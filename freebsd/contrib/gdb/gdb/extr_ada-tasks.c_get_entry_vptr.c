
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {int task_num; struct task_entry* next_task; } ;


 struct task_entry* task_list ;

__attribute__((used)) static struct task_entry *
get_entry_vptr (int p_task_num)
{
  struct task_entry *pt;

  pt = task_list;
  while (pt)
    {
      if (pt->task_num == p_task_num)
 return pt;
      pt = pt->next_task;
    }
  return ((void*)0);
}
