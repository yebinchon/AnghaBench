
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int port; } ;
typedef int mach_port_t ;
typedef int error_t ;


 int proc_debug (struct proc*,char*,int ) ;
 scalar_t__ proc_is_task (struct proc*) ;
 int task_set_exception_port (int ,int ) ;
 int thread_set_exception_port (int ,int ) ;

error_t
proc_set_exception_port (struct proc * proc, mach_port_t port)
{
  proc_debug (proc, "setting exception port: %d", port);
  if (proc_is_task (proc))
    return task_set_exception_port (proc->port, port);
  else
    return thread_set_exception_port (proc->port, port);
}
