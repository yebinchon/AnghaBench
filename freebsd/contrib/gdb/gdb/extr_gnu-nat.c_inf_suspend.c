
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int pause_sc; int sc; struct proc* next; } ;
struct inf {int pause_sc; TYPE_1__* task; struct proc* threads; } ;
struct TYPE_2__ {int sc; } ;


 int inf_update_procs (struct inf*) ;
 int inf_update_suspends (struct inf*) ;

void
inf_suspend (struct inf *inf)
{
  struct proc *thread;

  inf_update_procs (inf);

  for (thread = inf->threads; thread; thread = thread->next)
    thread->sc = thread->pause_sc;

  if (inf->task)
    inf->task->sc = inf->pause_sc;

  inf_update_suspends (inf);
}
