
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ALPHA_UNIQUE_PTRACE_ADDR ;
 int ALPHA_UNIQUE_REGNUM ;
 int FP0_REGNUM ;
 scalar_t__ FPR_BASE ;
 scalar_t__ GPR_BASE ;
 scalar_t__ PC ;
 int PC_REGNUM ;

CORE_ADDR
register_addr (int regno, CORE_ADDR blockend)
{
  if (regno == PC_REGNUM)
    return PC;
  if (regno == ALPHA_UNIQUE_REGNUM)
    return ALPHA_UNIQUE_PTRACE_ADDR;
  if (regno < FP0_REGNUM)
    return GPR_BASE + regno;
  else
    return FPR_BASE + regno - FP0_REGNUM;
}
