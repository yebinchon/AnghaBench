
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int dummy; } ;
struct fpreg {int dummy; } ;
typedef int PTRACE_ARG3_TYPE ;


 int FP0_REGNUM ;
 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 int PT_SETFPREGS ;
 int PT_SETREGS ;
 scalar_t__ getregs_supplies (int) ;
 int inferior_ptid ;
 int mipsfbsd_fill_fpreg (char*,int) ;
 int mipsfbsd_fill_reg (char*,int) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;

void
store_inferior_registers (int regno)
{
  if (regno == -1 || getregs_supplies (regno))
    {
      struct reg regs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't get registers");

      mipsfbsd_fill_reg ((char *) &regs, regno);

      if (ptrace (PT_SETREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't write registers");

      if (regno != -1)
 return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      struct fpreg fpregs;

      if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't get floating point status");

      mipsfbsd_fill_fpreg ((char *) &fpregs, regno);

      if (ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't write floating point status");
    }
}
