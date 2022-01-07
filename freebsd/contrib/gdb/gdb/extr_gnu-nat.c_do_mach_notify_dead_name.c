
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {scalar_t__ port; scalar_t__ dead; } ;
struct TYPE_2__ {int suppress; } ;
struct inf {scalar_t__ pid; scalar_t__ threads_up_to_date; TYPE_1__ wait; struct proc* task; } ;
typedef scalar_t__ mach_port_t ;
typedef int error_t ;


 void* MACH_PORT_NULL ;
 int inf_debug (struct inf*,char*,scalar_t__) ;
 struct proc* inf_port_to_thread (struct inf*,scalar_t__) ;
 int inf_task_died_status (struct inf*) ;
 int mach_port_deallocate (int ,scalar_t__) ;
 int mach_task_self () ;
 int proc_debug (struct proc*,char*) ;
 scalar_t__ proc_wait_pid ;
 struct inf* waiting_inf ;

error_t
do_mach_notify_dead_name (mach_port_t notify, mach_port_t dead_port)
{
  struct inf *inf = waiting_inf;

  inf_debug (waiting_inf, "port = %d", dead_port);

  if (inf->task && inf->task->port == dead_port)
    {
      proc_debug (inf->task, "is dead");
      inf->task->port = MACH_PORT_NULL;
      if (proc_wait_pid == inf->pid)


 inf->wait.suppress = 1;
      else


 inf_task_died_status (inf);
    }
  else
    {
      struct proc *thread = inf_port_to_thread (inf, dead_port);
      if (thread)
 {
   proc_debug (thread, "is dead");
   thread->port = MACH_PORT_NULL;
 }

      if (inf->task->dead)

 inf->wait.suppress = 1;
    }

  mach_port_deallocate (mach_task_self (), dead_port);
  inf->threads_up_to_date = 0;

  return 0;
}
