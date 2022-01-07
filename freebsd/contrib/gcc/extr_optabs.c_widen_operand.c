
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ SUBREG ;
 int SUBREG_PROMOTED_UNSIGNED_P (int ) ;
 scalar_t__ SUBREG_PROMOTED_VAR_P (int ) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ VOIDmode ;
 int convert_modes (int,int,int ,int) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (scalar_t__,int ) ;
 int gen_lowpart (scalar_t__,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_CLOBBER (scalar_t__,int ) ;
 int gen_rtx_SUBREG (int,int ,int ) ;

__attribute__((used)) static rtx
widen_operand (rtx op, enum machine_mode mode, enum machine_mode oldmode,
        int unsignedp, int no_extend)
{
  rtx result;


  if (no_extend && GET_MODE (op) == VOIDmode)
    return op;




  if (! no_extend
      || (GET_CODE (op) == SUBREG && SUBREG_PROMOTED_VAR_P (op)
   && SUBREG_PROMOTED_UNSIGNED_P (op) == unsignedp))
    return convert_modes (mode, oldmode, op, unsignedp);



  if (GET_MODE_SIZE (mode) <= UNITS_PER_WORD)
    return gen_rtx_SUBREG (mode, force_reg (GET_MODE (op), op), 0);




  result = gen_reg_rtx (mode);
  emit_insn (gen_rtx_CLOBBER (VOIDmode, result));
  emit_move_insn (gen_lowpart (GET_MODE (op), result), op);
  return result;
}
