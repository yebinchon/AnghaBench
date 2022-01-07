
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;
typedef int fpregset_t ;
typedef int PTRACE_ARG3_TYPE ;


 int FP0_REGNUM ;
 scalar_t__ GETREGS_SUPPLIES (int) ;
 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int PT_GETREGS ;
 int PT_GETXMMREGS ;
 int PT_SETFPREGS ;
 int PT_SETREGS ;
 int PT_SETXMMREGS ;
 int fill_gregset (int *,int) ;
 int have_ptrace_xmmregs ;
 int i387_fill_fsave (char*,int) ;
 int i387_fill_fxsave (char*,int) ;
 int inferior_ptid ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;

void
store_inferior_registers (int regno)
{
  if (regno == -1 || GETREGS_SUPPLIES (regno))
    {
      gregset_t gregs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
                  (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
        perror_with_name ("Couldn't get registers");

      fill_gregset (&gregs, regno);

      if (ptrace (PT_SETREGS, PIDGET (inferior_ptid),
           (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
        perror_with_name ("Couldn't write registers");

      if (regno != -1)
 return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      fpregset_t fpregs;
          if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
        (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
     perror_with_name ("Couldn't get floating point status");

          i387_fill_fsave ((char *) &fpregs, regno);

          if (ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
        (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
     perror_with_name ("Couldn't write floating point status");



    }
}
