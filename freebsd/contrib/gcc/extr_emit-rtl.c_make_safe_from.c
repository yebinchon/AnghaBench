
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONSTANT_P (int ) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;



 int SUBREG_REG (int ) ;
 int XEXP (int ,int ) ;

 int emit_move_insn (int ,int ) ;
 int gen_reg_rtx (int ) ;
 scalar_t__ reg_mentioned_p (int ,int ) ;

rtx
make_safe_from (rtx x, rtx other)
{
  while (1)
    switch (GET_CODE (other))
      {
      case 129:
 other = SUBREG_REG (other);
 break;
      case 130:
      case 131:
      case 128:
 other = XEXP (other, 0);
 break;
      default:
 goto done;
      }
 done:
  if ((MEM_P (other)
       && ! CONSTANT_P (x)
       && !REG_P (x)
       && GET_CODE (x) != 129)
      || (REG_P (other)
   && (REGNO (other) < FIRST_PSEUDO_REGISTER
       || reg_mentioned_p (other, x))))
    {
      rtx temp = gen_reg_rtx (GET_MODE (x));
      emit_move_insn (temp, x);
      return temp;
    }
  return x;
}
