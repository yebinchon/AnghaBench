
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tid; scalar_t__ pid; struct TYPE_4__* next_pseudo; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ lwpid_t ;
struct TYPE_6__ {TYPE_1__* head_pseudo; TYPE_1__* head; } ;
struct TYPE_5__ {TYPE_1__* head_pseudo; TYPE_1__* head; } ;


 TYPE_3__ deleted_threads ;
 TYPE_2__ thread_head ;

__attribute__((used)) static lwpid_t
map_from_gdb_tid (lwpid_t gdb_tid)
{
  thread_info *p;




  for (p = thread_head.head; p; p = p->next)
    {
      if (p->tid == gdb_tid)
 return gdb_tid;
    }




  for (p = thread_head.head_pseudo; p != ((void*)0); p = p->next_pseudo)
    {
      if (p->pid == gdb_tid)
 return p->tid;
    }




  for (p = deleted_threads.head; p; p = p->next)
    {
      if (p->tid == gdb_tid)
 return gdb_tid;
    }




  for (p = deleted_threads.head_pseudo; p != ((void*)0); p = p->next_pseudo)
    {
      if (p->pid == gdb_tid)
 return p->tid;
    }

  return 0;
}
