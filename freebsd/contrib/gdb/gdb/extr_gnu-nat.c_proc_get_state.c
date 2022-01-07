
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct proc {int aborted; int state_valid; int state_changed; int state; int port; } ;
typedef int mach_msg_type_number_t ;
typedef int error_t ;


 int THREAD_STATE_FLAVOR ;
 int THREAD_STATE_SIZE ;
 int proc_abort (struct proc*,int) ;
 int proc_debug (struct proc*,char*,...) ;
 int thread_get_state (int ,int ,int ,int *) ;

thread_state_t
proc_get_state (struct proc *proc, int will_modify)
{
  int was_aborted = proc->aborted;

  proc_debug (proc, "updating state info%s",
       will_modify ? " (with intention to modify)" : "");

  proc_abort (proc, will_modify);

  if (!was_aborted && proc->aborted)

    proc->state_valid = 0;

  if (!proc->state_valid)
    {
      mach_msg_type_number_t state_size = THREAD_STATE_SIZE;
      error_t err =
      thread_get_state (proc->port, THREAD_STATE_FLAVOR,
   (thread_state_t) &proc->state, &state_size);
      proc_debug (proc, "getting thread state");
      proc->state_valid = !err;
    }

  if (proc->state_valid)
    {
      if (will_modify)
 proc->state_changed = 1;
      return (thread_state_t) &proc->state;
    }
  else
    return 0;
}
