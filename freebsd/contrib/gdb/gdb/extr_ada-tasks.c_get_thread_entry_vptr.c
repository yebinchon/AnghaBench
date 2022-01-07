
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {void* thread; struct task_entry* next_task; } ;


 struct task_entry* task_list ;

__attribute__((used)) static struct task_entry *
get_thread_entry_vptr (void *thread)
{
  struct task_entry *pt;

  pt = task_list;
  while (pt != ((void*)0))
    {
      if (pt->thread == thread)
 return pt;
      pt = pt->next_task;
    }
  return 0;
}
