
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DImode ;
 int FIRST_STACK_REG ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int I387_CW_ANY ;
 scalar_t__ MEM ;
 int REG_DEAD ;
 int STACK_TOP_P (int ) ;
 scalar_t__ find_regno_note (int ,int ,int ) ;
 int gcc_assert (int) ;
 int get_attr_i387_cw (int ) ;
 int output_asm_insn (char*,int *) ;

const char *
output_fix_trunc (rtx insn, rtx *operands, int fisttp)
{
  int stack_top_dies = find_regno_note (insn, REG_DEAD, FIRST_STACK_REG) != 0;
  int dimode_p = GET_MODE (operands[0]) == DImode;
  int round_mode = get_attr_i387_cw (insn);




  if ((dimode_p || fisttp) && !stack_top_dies)
    output_asm_insn ("fld\t%y1", operands);

  gcc_assert (STACK_TOP_P (operands[1]));
  gcc_assert (GET_CODE (operands[0]) == MEM);

  if (fisttp)
      output_asm_insn ("fisttp%z0\t%0", operands);
  else
    {
      if (round_mode != I387_CW_ANY)
 output_asm_insn ("fldcw\t%3", operands);
      if (stack_top_dies || dimode_p)
 output_asm_insn ("fistp%z0\t%0", operands);
      else
 output_asm_insn ("fist%z0\t%0", operands);
      if (round_mode != I387_CW_ANY)
 output_asm_insn ("fldcw\t%2", operands);
    }

  return "";
}
