
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct proc* next; } ;
struct inf {struct proc* threads; int event_port; struct proc* task; } ;


 int MACH_PORT_NULL ;
 int inf_debug (struct inf*,char*) ;
 int inf_set_step_thread (struct inf*,int ) ;
 int proc_steal_exc_port (struct proc*,int ) ;

void
inf_steal_exc_ports (struct inf *inf)
{
  struct proc *thread;

  inf_debug (inf, "stealing exception ports");

  inf_set_step_thread (inf, 0);

  proc_steal_exc_port (inf->task, inf->event_port);
  for (thread = inf->threads; thread; thread = thread->next)
    proc_steal_exc_port (thread, MACH_PORT_NULL);
}
