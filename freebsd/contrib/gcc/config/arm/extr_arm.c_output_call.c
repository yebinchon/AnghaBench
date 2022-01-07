
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int IP_REGNUM ;
 scalar_t__ LR_REGNUM ;
 scalar_t__ REGNO (int ) ;
 int SImode ;
 scalar_t__ TARGET_INTERWORK ;
 scalar_t__ arm_arch4t ;
 int arm_arch5 ;
 int gcc_assert (int) ;
 int gen_rtx_REG (int ,int ) ;
 int output_asm_insn (char*,int *) ;

const char *
output_call (rtx *operands)
{
  gcc_assert (!arm_arch5);


  if (REGNO (operands[0]) == LR_REGNUM)
    {
      operands[0] = gen_rtx_REG (SImode, IP_REGNUM);
      output_asm_insn ("mov%?\t%0, %|lr", operands);
    }

  output_asm_insn ("mov%?\t%|lr, %|pc", operands);

  if (TARGET_INTERWORK || arm_arch4t)
    output_asm_insn ("bx%?\t%0", operands);
  else
    output_asm_insn ("mov%?\t%|pc, %0", operands);

  return "";
}
