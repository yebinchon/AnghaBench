
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {scalar_t__ port; scalar_t__ exc_port; scalar_t__ cur_sc; scalar_t__ sc; struct proc* next; struct inf* inf; } ;
struct TYPE_2__ {struct proc* thread; } ;
struct inf {struct proc* signal_thread; TYPE_1__ wait; struct proc* step_thread; } ;


 scalar_t__ MACH_PORT_NULL ;
 int inf_clear_wait (struct inf*) ;
 int inf_set_step_thread (struct inf*,int ) ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;
 int proc_debug (struct proc*,char*) ;
 int proc_restore_exc_port (struct proc*) ;
 int proc_update_sc (struct proc*) ;
 int xfree (struct proc*) ;

struct proc *
_proc_free (struct proc *proc)
{
  struct inf *inf = proc->inf;
  struct proc *next = proc->next;

  proc_debug (proc, "freeing...");

  if (proc == inf->step_thread)

    inf_set_step_thread (inf, 0);
  if (proc == inf->wait.thread)
    inf_clear_wait (inf);
  if (proc == inf->signal_thread)
    inf->signal_thread = 0;

  if (proc->port != MACH_PORT_NULL)
    {
      if (proc->exc_port != MACH_PORT_NULL)

 proc_restore_exc_port (proc);
      if (proc->cur_sc != 0)

 {
   proc->sc = 0;
   proc_update_sc (proc);
 }
      mach_port_deallocate (mach_task_self (), proc->port);
    }

  xfree (proc);
  return next;
}
