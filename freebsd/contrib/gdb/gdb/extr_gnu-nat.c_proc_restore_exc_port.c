
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ exc_port; void* saved_exc_port; } ;
typedef scalar_t__ mach_port_t ;
typedef scalar_t__ error_t ;


 void* MACH_PORT_NULL ;
 scalar_t__ _proc_get_exc_port (struct proc*) ;
 int mach_port_deallocate (int ,void*) ;
 int mach_task_self () ;
 int proc_debug (struct proc*,char*) ;
 scalar_t__ proc_set_exception_port (struct proc*,void*) ;
 int proc_string (struct proc*) ;
 int safe_strerror (scalar_t__) ;
 int warning (char*,int ,int ) ;

void
proc_restore_exc_port (struct proc *proc)
{
  mach_port_t cur_exc_port = _proc_get_exc_port (proc);

  if (cur_exc_port)
    {
      error_t err = 0;

      proc_debug (proc, "restoring real exception port");

      if (proc->exc_port == cur_exc_port)

 err = proc_set_exception_port (proc, proc->saved_exc_port);

      if (proc->saved_exc_port)
 mach_port_deallocate (mach_task_self (), proc->saved_exc_port);
      proc->saved_exc_port = MACH_PORT_NULL;

      if (!err)
 proc->exc_port = MACH_PORT_NULL;
      else
 warning ("Error setting exception port for %s: %s",
   proc_string (proc), safe_strerror (err));
    }
}
