
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;
typedef int fpregset_t ;
typedef int PTRACE_ARG3_TYPE ;


 scalar_t__ FPREG_SUPPLIES (int) ;
 scalar_t__ GREG_SUPPLIES (int) ;
 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 int PT_SETFPREGS ;
 int PT_SETREGS ;
 int fill_fpregset (int *,int) ;
 int fill_gregset (int *,int) ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;

void
store_inferior_registers (int regno)
{
  union {
    fpregset_t fpr;
    gregset_t r;
  } regs;

  if (regno == -1 || GREG_SUPPLIES(regno))
    {
      if (ptrace (PT_GETREGS, PIDGET(inferior_ptid),
    (PTRACE_ARG3_TYPE)&regs.r, 0) == -1)
 perror_with_name ("Couldn't get registers");
      fill_gregset (&regs.r, regno);
      if (ptrace (PT_SETREGS, PIDGET(inferior_ptid),
    (PTRACE_ARG3_TYPE)&regs.r, 0) == -1)
 perror_with_name ("Couldn't get registers");
      if (regno != -1)
 return;
    }

  if (regno == -1 || FPREG_SUPPLIES(regno))
    {
      if (ptrace (PT_GETFPREGS, PIDGET(inferior_ptid),
    (PTRACE_ARG3_TYPE)&regs.fpr, 0) == -1)
 perror_with_name ("Couldn't get FP registers");
      fill_fpregset (&regs.fpr, regno);
      if (ptrace (PT_SETFPREGS, PIDGET(inferior_ptid),
    (PTRACE_ARG3_TYPE)&regs.fpr, 0) == -1)
 perror_with_name ("Couldn't get FP registers");
      if (regno != -1)
 return;
    }
}
