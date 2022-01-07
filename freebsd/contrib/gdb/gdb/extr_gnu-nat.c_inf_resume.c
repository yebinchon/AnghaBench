
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int resume_sc; int sc; struct proc* next; } ;
struct inf {TYPE_1__* task; int pending_execs; struct proc* threads; } ;
struct TYPE_2__ {scalar_t__ sc; } ;


 int inf_update_procs (struct inf*) ;
 int inf_update_suspends (struct inf*) ;
 int inf_validate_task_sc (struct inf*) ;

void
inf_resume (struct inf *inf)
{
  struct proc *thread;

  inf_update_procs (inf);

  for (thread = inf->threads; thread; thread = thread->next)
    thread->sc = thread->resume_sc;

  if (inf->task)
    {
      if (!inf->pending_execs)



 inf_validate_task_sc (inf);
      inf->task->sc = 0;
    }

  inf_update_suspends (inf);
}
