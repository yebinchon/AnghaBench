
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tid; struct TYPE_10__* next; struct TYPE_10__* thread_list; int pid; } ;
typedef TYPE_1__ procinfo ;


 TYPE_1__* find_procinfo_or_die (int ,int ) ;
 int stub1 (TYPE_1__*,TYPE_1__*,void*) ;

int
proc_iterate_over_threads (procinfo *pi,
      int (*func) (procinfo *, procinfo *, void *),
      void *ptr)
{
  procinfo *thread, *next;
  int retval = 0;
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);

  for (thread = pi->thread_list; thread != ((void*)0); thread = next)
    {
      next = thread->next;
      if ((retval = (*func) (pi, thread, ptr)) != 0)
 break;
    }

  return retval;
}
