
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct proc* next; } ;
struct inf {struct proc* threads; struct proc* task; } ;


 int inf_debug (struct inf*,char*) ;
 int inf_set_step_thread (struct inf*,int ) ;
 int proc_restore_exc_port (struct proc*) ;

void
inf_restore_exc_ports (struct inf *inf)
{
  struct proc *thread;

  inf_debug (inf, "restoring exception ports");

  inf_set_step_thread (inf, 0);

  proc_restore_exc_port (inf->task);
  for (thread = inf->threads; thread; thread = thread->next)
    proc_restore_exc_port (thread);
}
