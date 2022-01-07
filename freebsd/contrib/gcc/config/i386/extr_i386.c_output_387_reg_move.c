
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ FIRST_STACK_REG ;
 scalar_t__ REGNO (int ) ;
 int REG_DEAD ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ STACK_TOP_P (int ) ;
 scalar_t__ find_regno_note (int ,int ,scalar_t__) ;
 char const* output_387_ffreep (int *,int ) ;

const char *
output_387_reg_move (rtx insn, rtx *operands)
{
  if (REG_P (operands[1])
      && find_regno_note (insn, REG_DEAD, REGNO (operands[1])))
    {
      if (REGNO (operands[0]) == FIRST_STACK_REG)
 return output_387_ffreep (operands, 0);
      return "fstp\t%y0";
    }
  if (STACK_TOP_P (operands[0]))
    return "fld%z1\t%y1";
  return "fst\t%y0";
}
