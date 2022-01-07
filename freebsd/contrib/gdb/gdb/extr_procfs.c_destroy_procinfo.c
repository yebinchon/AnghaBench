
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tid; struct TYPE_7__* thread_list; int pid; } ;
typedef TYPE_1__ procinfo ;


 int destroy_one_procinfo (TYPE_1__**,TYPE_1__*) ;
 TYPE_1__* find_procinfo (int ,int ) ;
 TYPE_1__* procinfo_list ;

__attribute__((used)) static void
destroy_procinfo (procinfo *pi)
{
  procinfo *tmp;

  if (pi->tid != 0)
    {
      tmp = find_procinfo (pi->pid, 0);
      destroy_one_procinfo (&tmp->thread_list, pi);
    }
  else
    {

      while (pi->thread_list != ((void*)0))
 destroy_one_procinfo (&pi->thread_list, pi->thread_list);

      destroy_one_procinfo (&procinfo_list, pi);
    }
}
