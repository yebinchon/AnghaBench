
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;
 int VOIDmode ;
 int const_high_operand (int ,int) ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_HIGH (int,int ) ;
 int gen_rtx_IOR (int,int ,int ) ;
 int gen_rtx_LO_SUM (int,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 int small_int_operand (int ,int) ;

void
sparc_emit_set_const32 (rtx op0, rtx op1)
{
  enum machine_mode mode = GET_MODE (op0);
  rtx temp;

  if (reload_in_progress || reload_completed)
    temp = op0;
  else
    temp = gen_reg_rtx (mode);

  if (GET_CODE (op1) == CONST_INT)
    {
      gcc_assert (!small_int_operand (op1, mode)
    && !const_high_operand (op1, mode));




      emit_insn (gen_rtx_SET (VOIDmode, temp,
         GEN_INT (INTVAL (op1)
           & ~(HOST_WIDE_INT)0x3ff)));

      emit_insn (gen_rtx_SET (VOIDmode,
         op0,
         gen_rtx_IOR (mode, temp,
        GEN_INT (INTVAL (op1) & 0x3ff))));
    }
  else
    {

      emit_insn (gen_rtx_SET (VOIDmode, temp,
         gen_rtx_HIGH (mode, op1)));
      emit_insn (gen_rtx_SET (VOIDmode,
         op0, gen_rtx_LO_SUM (mode, temp, op1)));
    }
}
