
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {void* saved_exc_port; void* exc_port; } ;
typedef int mach_port_t ;
typedef scalar_t__ error_t ;


 void* MACH_PORT_NULL ;
 int mach_port_deallocate (int ,void*) ;
 int mach_task_self () ;
 scalar_t__ proc_get_exception_port (struct proc*,int *) ;

__attribute__((used)) static mach_port_t
_proc_get_exc_port (struct proc *proc)
{
  mach_port_t exc_port;
  error_t err = proc_get_exception_port (proc, &exc_port);

  if (err)

    {
      if (proc->exc_port)
 mach_port_deallocate (mach_task_self (), proc->exc_port);
      proc->exc_port = MACH_PORT_NULL;
      if (proc->saved_exc_port)
 mach_port_deallocate (mach_task_self (), proc->saved_exc_port);
      proc->saved_exc_port = MACH_PORT_NULL;
    }

  return exc_port;
}
