
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int * fpr; int fpr_fpsr; } ;
typedef int PTRACE_ARG3_TYPE ;


 int ARM_F0_REGNUM ;

 int PIDGET (int ) ;
 int PT_GETFPREGS ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int supply_register (int const,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_fp_register (int regno)
{
  struct fpreg inferior_fp_registers;
  int ret;

  ret = ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch floating-point register");
      return;
    }

  switch (regno)
    {
    case 128:
      supply_register (128,
         (char *) &inferior_fp_registers.fpr_fpsr);
      break;

    default:
      supply_register
 (regno, (char *) &inferior_fp_registers.fpr[regno - ARM_F0_REGNUM]);
      break;
    }
}
