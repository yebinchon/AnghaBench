
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ VOIDmode ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_reg_rtx (int) ;
 int general_operand (scalar_t__,scalar_t__) ;

rtx
copy_to_mode_reg (enum machine_mode mode, rtx x)
{
  rtx temp = gen_reg_rtx (mode);



  if (! general_operand (x, VOIDmode))
    x = force_operand (x, temp);

  gcc_assert (GET_MODE (x) == mode || GET_MODE (x) == VOIDmode);
  if (x != temp)
    emit_move_insn (temp, x);
  return temp;
}
