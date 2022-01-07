
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_state_t ;
struct proc {int fetched_regs; } ;


 int I386_NUM_GREGS ;
 int PIDGET (int ) ;
 int REGISTER_NAME (int) ;
 int REG_ADDR (int ,int) ;
 int current_inferior ;
 int error (char*,int ) ;
 int fetch_fpregs (struct proc*) ;
 struct proc* inf_tid_to_thread (int ,int ) ;
 int inf_update_procs (int ) ;
 int inferior_ptid ;
 int proc_debug (struct proc*,char*,...) ;
 int proc_get_state (struct proc*,int ) ;
 int proc_string (struct proc*) ;
 int supply_register (int,int ) ;
 int warning (char*,int ) ;

void
gnu_fetch_registers (int regno)
{
  struct proc *thread;


  inf_update_procs (current_inferior);

  thread = inf_tid_to_thread (current_inferior, PIDGET (inferior_ptid));
  if (!thread)
    error ("Can't fetch registers from thread %d: No such thread",
    PIDGET (inferior_ptid));

  if (regno < I386_NUM_GREGS || regno == -1)
    {
      thread_state_t state;


      state = proc_get_state (thread, 0);
      if (!state)
 {
   warning ("Couldn't fetch registers from %s",
     proc_string (thread));
   return;
 }

      if (regno == -1)
 {
   int i;

   proc_debug (thread, "fetching all register");

   for (i = 0; i < I386_NUM_GREGS; i++)
     supply_register (i, REG_ADDR (state, i));
   thread->fetched_regs = ~0;
 }
      else
 {
   proc_debug (thread, "fetching register %s", REGISTER_NAME (regno));

   supply_register (regno, REG_ADDR (state, regno));
   thread->fetched_regs |= (1 << regno);
 }
    }

  if (regno >= I386_NUM_GREGS || regno == -1)
    {
      proc_debug (thread, "fetching floating-point registers");

      fetch_fpregs (thread);
    }
}
