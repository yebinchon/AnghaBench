
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct proc {int port; } ;
struct i386_float_state {int hw_state; int initialized; } ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ error_t ;


 int FOP_REGNUM ;
 int FP0_REGNUM ;
 int current_regcache ;
 int i386_FLOAT_STATE ;
 int i386_FLOAT_STATE_COUNT ;
 int i387_supply_fsave (int ,int,int ) ;
 int proc_string (struct proc*) ;
 int supply_register (int,int *) ;
 scalar_t__ thread_get_state (int ,int ,int ,int *) ;
 int warning (char*,int ) ;

__attribute__((used)) static void
fetch_fpregs (struct proc *thread)
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

  if (!state.initialized)

    {
      int i;

      for (i = FP0_REGNUM; i <= FOP_REGNUM; i++)
 supply_register (i, ((void*)0));

      return;
    }


  i387_supply_fsave (current_regcache, -1, state.hw_state);
}
