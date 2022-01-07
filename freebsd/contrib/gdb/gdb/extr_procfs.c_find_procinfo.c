
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; int tid; struct TYPE_4__* next; struct TYPE_4__* thread_list; } ;
typedef TYPE_1__ procinfo ;


 TYPE_1__* procinfo_list ;

__attribute__((used)) static procinfo *
find_procinfo (int pid, int tid)
{
  procinfo *pi;

  for (pi = procinfo_list; pi; pi = pi->next)
    if (pi->pid == pid)
      break;

  if (pi)
    if (tid)
      {







 for (pi = pi->thread_list; pi; pi = pi->next)
   if (pi->tid == tid)
     break;
      }

  return pi;
}
