
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ABI_64 ;
 scalar_t__ ABI_N32 ;
 int DSP_ACC_REG_FIRST ;
 int DSP_ACC_REG_LAST ;
 int FP_REG_FIRST ;
 int FP_REG_LAST ;
 int ISA_HAS_8CC ;
 int ST_REG_FIRST ;
 int ST_REG_LAST ;
 int TARGET_DSP ;
 int TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_MIPS16 ;
 void** call_really_used_regs ;
 void** call_used_regs ;
 void** fixed_regs ;
 scalar_t__ mips_abi ;

void
mips_conditional_register_usage (void)
{
  if (!TARGET_DSP)
    {
      int regno;

      for (regno = DSP_ACC_REG_FIRST; regno <= DSP_ACC_REG_LAST; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
    }
  if (!TARGET_HARD_FLOAT)
    {
      int regno;

      for (regno = FP_REG_FIRST; regno <= FP_REG_LAST; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
      for (regno = ST_REG_FIRST; regno <= ST_REG_LAST; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
    }
  else if (! ISA_HAS_8CC)
    {
      int regno;




      for (regno = ST_REG_FIRST; regno <= ST_REG_LAST; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
    }




  if (TARGET_MIPS16)
    {
      fixed_regs[18] = call_used_regs[18] = 1;
      fixed_regs[19] = call_used_regs[19] = 1;
      fixed_regs[20] = call_used_regs[20] = 1;
      fixed_regs[21] = call_used_regs[21] = 1;
      fixed_regs[22] = call_used_regs[22] = 1;
      fixed_regs[23] = call_used_regs[23] = 1;
      fixed_regs[26] = call_used_regs[26] = 1;
      fixed_regs[27] = call_used_regs[27] = 1;
      fixed_regs[30] = call_used_regs[30] = 1;
    }

  if (mips_abi == ABI_64)
    {
      int regno;
      for (regno = FP_REG_FIRST + 20; regno < FP_REG_FIRST + 24; regno++)
 call_really_used_regs[regno] = call_used_regs[regno] = 1;
    }

  if (mips_abi == ABI_N32)
    {
      int regno;
      for (regno = FP_REG_FIRST + 21; regno <= FP_REG_FIRST + 31; regno+=2)
 call_really_used_regs[regno] = call_used_regs[regno] = 1;
    }
}
