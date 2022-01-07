
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_state_t ;
struct proc {scalar_t__ exc_port; TYPE_1__* inf; } ;
struct TYPE_2__ {int event_port; } ;


 scalar_t__ MACH_PORT_NULL ;
 int THREAD_STATE_CLEAR_TRACED (int ) ;
 int THREAD_STATE_SET_TRACED (int ) ;
 int proc_debug (struct proc*,char*,char*) ;
 int proc_get_state (struct proc*,int) ;
 int proc_steal_exc_port (struct proc*,int ) ;

int
proc_trace (struct proc *proc, int set)
{
  thread_state_t state = proc_get_state (proc, 1);

  if (!state)
    return 0;

  proc_debug (proc, "tracing %s", set ? "on" : "off");

  if (set)
    {


      if (proc->exc_port == MACH_PORT_NULL)
 proc_steal_exc_port (proc, proc->inf->event_port);
      THREAD_STATE_SET_TRACED (state);
    }
  else
    THREAD_STATE_CLEAR_TRACED (state);

  return 1;
}
