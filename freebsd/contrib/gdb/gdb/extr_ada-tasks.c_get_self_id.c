
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct task_entry {void* task_id; } ;


 int GET_CURRENT_THREAD () ;
 struct task_entry* get_thread_entry_vptr (int ) ;
 scalar_t__ thread_support ;

void *
get_self_id (void)
{
  struct value *val;
  void *self_id;
  int result;
  struct task_entry *ent;
  extern int do_not_insert_breakpoints;


  if (thread_support)

    {
      ent = get_thread_entry_vptr (GET_CURRENT_THREAD ());
      return ent ? ent->task_id : 0;
    }




  return ((void*)0);
}
