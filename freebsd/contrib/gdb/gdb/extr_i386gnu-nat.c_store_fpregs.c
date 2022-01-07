
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct proc {int port; } ;
struct i386_float_state {int hw_state; } ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ error_t ;


 int i386_FLOAT_STATE ;
 int i386_FLOAT_STATE_COUNT ;
 int i387_fill_fsave (int ,int) ;
 int proc_string (struct proc*) ;
 scalar_t__ thread_get_state (int ,int ,int ,int *) ;
 scalar_t__ thread_set_state (int ,int ,int ,int ) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
store_fpregs (struct proc *thread, int regno)
{
  mach_msg_type_number_t count = i386_FLOAT_STATE_COUNT;
  struct i386_float_state state;
  error_t err;

  err = thread_get_state (thread->port, i386_FLOAT_STATE,
     (thread_state_t) &state, &count);
  if (err)
    {
      warning ("Couldn't fetch floating-point state from %s",
        proc_string (thread));
      return;
    }



  i387_fill_fsave (state.hw_state, regno);

  err = thread_set_state (thread->port, i386_FLOAT_STATE,
     (thread_state_t) &state, i386_FLOAT_STATE_COUNT);
  if (err)
    {
      warning ("Couldn't store floating-point state into %s",
        proc_string (thread));
      return;
    }
}
