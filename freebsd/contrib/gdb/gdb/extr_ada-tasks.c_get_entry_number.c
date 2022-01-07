
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {void* task_id; int task_num; struct task_entry* next_task; } ;


 struct task_entry* task_list ;

int
get_entry_number (void *p_task_id)
{
  struct task_entry *pt;

  pt = task_list;
  while (pt != ((void*)0))
    {
      if (pt->task_id == p_task_id)
 return pt->task_num;
      pt = pt->next_task;
    }
  return 0;
}
