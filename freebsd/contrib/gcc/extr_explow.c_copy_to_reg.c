
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int GET_MODE (scalar_t__) ;
 int VOIDmode ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int general_operand (scalar_t__,int ) ;

rtx
copy_to_reg (rtx x)
{
  rtx temp = gen_reg_rtx (GET_MODE (x));



  if (! general_operand (x, VOIDmode))
    x = force_operand (x, temp);

  if (x != temp)
    emit_move_insn (temp, x);

  return temp;
}
