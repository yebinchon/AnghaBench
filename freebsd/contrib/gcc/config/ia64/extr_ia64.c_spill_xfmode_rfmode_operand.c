
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ REG ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TImode ;
 int adjust_address (int ,int,int ) ;
 int assign_stack_temp (int,int,int ) ;
 int emit_move_insn (int ,int ) ;

__attribute__((used)) static rtx
spill_xfmode_rfmode_operand (rtx in, int force, enum machine_mode mode)
{
  if (GET_CODE (in) == SUBREG
      && GET_MODE (SUBREG_REG (in)) == TImode
      && GET_CODE (SUBREG_REG (in)) == REG)
    {
      rtx memt = assign_stack_temp (TImode, 16, 0);
      emit_move_insn (memt, SUBREG_REG (in));
      return adjust_address (memt, mode, 0);
    }
  else if (force && GET_CODE (in) == REG)
    {
      rtx memx = assign_stack_temp (mode, 16, 0);
      emit_move_insn (memx, in);
      return memx;
    }
  else
    return in;
}
