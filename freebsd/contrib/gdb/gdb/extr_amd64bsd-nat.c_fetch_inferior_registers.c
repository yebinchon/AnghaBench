
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int dummy; } ;
struct fpreg {int dummy; } ;
typedef int PTRACE_ARG3_TYPE ;


 int AMD64_ST0_REGNUM ;
 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 scalar_t__ amd64_native_gregset_supplies_p (int) ;
 int amd64_supply_fxsave (int ,int,struct fpreg*) ;
 int amd64_supply_native_gregset (int ,struct reg*,int) ;
 int current_regcache ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;

void
fetch_inferior_registers (int regnum)
{
  if (regnum == -1 || amd64_native_gregset_supplies_p (regnum))
    {
      struct reg regs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &regs, 0) == -1)
 perror_with_name ("Couldn't get registers");

      amd64_supply_native_gregset (current_regcache, &regs, -1);
      if (regnum != -1)
 return;
    }

  if (regnum == -1 || regnum >= AMD64_ST0_REGNUM)
    {
      struct fpreg fpregs;

      if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't get floating point status");

      amd64_supply_fxsave (current_regcache, -1, &fpregs);
    }
}
