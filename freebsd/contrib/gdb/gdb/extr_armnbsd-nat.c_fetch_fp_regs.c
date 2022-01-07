
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int dummy; } ;
typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int supply_fparegset (struct fpreg*) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_fp_regs (void)
{
  struct fpreg inferior_fp_registers;
  int ret;
  int regno;

  ret = ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch general registers");
      return;
    }

  supply_fparegset (&inferior_fp_registers);
}
