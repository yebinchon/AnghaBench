
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {int task_num; int known_tasks_index; scalar_t__ stack_per; struct task_entry* next_task; void* task_id; } ;


 int highest_task_num ;
 struct task_entry* task_list ;
 struct task_entry* xmalloc (int) ;

__attribute__((used)) static int
add_task_entry (void *p_task_id, int index)
{
  struct task_entry *new_task_entry = ((void*)0);
  struct task_entry *pt;

  highest_task_num++;
  new_task_entry = xmalloc (sizeof (struct task_entry));
  new_task_entry->task_num = highest_task_num;
  new_task_entry->task_id = p_task_id;
  new_task_entry->known_tasks_index = index;
  new_task_entry->next_task = ((void*)0);
  pt = task_list;
  if (pt)
    {
      while (pt->next_task)
 pt = pt->next_task;
      pt->next_task = new_task_entry;
      pt->stack_per = 0;
    }
  else
    task_list = new_task_entry;
  return new_task_entry->task_num;
}
