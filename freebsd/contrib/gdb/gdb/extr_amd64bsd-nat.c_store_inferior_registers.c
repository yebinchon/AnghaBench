
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
 int PT_SETFPREGS ;
 int PT_SETREGS ;
 int amd64_collect_native_gregset (int ,struct reg*,int) ;
 int amd64_fill_fxsave (char*,int) ;
 scalar_t__ amd64_native_gregset_supplies_p (int) ;
 int current_regcache ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;

void
store_inferior_registers (int regnum)
{
  if (regnum == -1 || amd64_native_gregset_supplies_p (regnum))
    {
      struct reg regs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
                  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
        perror_with_name ("Couldn't get registers");

      amd64_collect_native_gregset (current_regcache, &regs, regnum);

      if (ptrace (PT_SETREGS, PIDGET (inferior_ptid),
           (PTRACE_ARG3_TYPE) &regs, 0) == -1)
        perror_with_name ("Couldn't write registers");

      if (regnum != -1)
 return;
    }

  if (regnum == -1 || regnum >= AMD64_ST0_REGNUM)
    {
      struct fpreg fpregs;

      if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't get floating point status");

      amd64_fill_fxsave ((char *) &fpregs, regnum);

      if (ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
    (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
 perror_with_name ("Couldn't write floating point status");
    }
}
