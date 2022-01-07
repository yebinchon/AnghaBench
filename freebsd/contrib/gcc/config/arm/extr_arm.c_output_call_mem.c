
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int LR_REGNUM ;
 scalar_t__ TARGET_INTERWORK ;
 scalar_t__ arm_arch4t ;
 scalar_t__ arm_arch5 ;
 int output_asm_insn (char*,int *) ;
 scalar_t__ regno_use_in (int ,int ) ;

const char *
output_call_mem (rtx *operands)
{
  if (TARGET_INTERWORK && !arm_arch5)
    {
      output_asm_insn ("ldr%?\t%|ip, %0", operands);
      output_asm_insn ("mov%?\t%|lr, %|pc", operands);
      output_asm_insn ("bx%?\t%|ip", operands);
    }
  else if (regno_use_in (LR_REGNUM, operands[0]))
    {



      output_asm_insn ("ldr%?\t%|ip, %0", operands);
      if (arm_arch5)
 output_asm_insn ("blx%?\t%|ip", operands);
      else
 {
   output_asm_insn ("mov%?\t%|lr, %|pc", operands);
   if (arm_arch4t)
     output_asm_insn ("bx%?\t%|ip", operands);
   else
     output_asm_insn ("mov%?\t%|pc, %|ip", operands);
 }
    }
  else
    {
      output_asm_insn ("mov%?\t%|lr, %|pc", operands);
      output_asm_insn ("ldr%?\t%|pc, %0", operands);
    }

  return "";
}
