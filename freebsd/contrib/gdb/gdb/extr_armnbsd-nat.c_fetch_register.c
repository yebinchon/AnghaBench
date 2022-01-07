
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int * r; int r_pc; int r_cpsr; int r_lr; int r_sp; } ;
typedef int PTRACE_ARG3_TYPE ;


 int ADDR_BITS_REMOVE (int ) ;




 int PIDGET (int ) ;
 int PT_GETREGS ;
 int arm_apcs_32 ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int supply_register (int const,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_register (int regno)
{
  struct reg inferior_registers;
  int ret;

  ret = ptrace (PT_GETREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch general register");
      return;
    }

  switch (regno)
    {
    case 128:
      supply_register (128, (char *) &inferior_registers.r_sp);
      break;

    case 131:
      supply_register (131, (char *) &inferior_registers.r_lr);
      break;

    case 130:

      inferior_registers.r_pc = ADDR_BITS_REMOVE (inferior_registers.r_pc);
      supply_register (130, (char *) &inferior_registers.r_pc);
      break;

    case 129:
      if (arm_apcs_32)
 supply_register (129, (char *) &inferior_registers.r_cpsr);
      else
 supply_register (129, (char *) &inferior_registers.r_pc);
      break;

    default:
      supply_register (regno, (char *) &inferior_registers.r[regno]);
      break;
    }
}
