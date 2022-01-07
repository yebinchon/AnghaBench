
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCmode ;
 int FLAGS_REG ;
 int PLUS ;
 int VOIDmode ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int gen_rtvec (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int ,int ) ;
 scalar_t__ gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,int ) ;
 int gen_rtx_fmt_ee (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ ix86_fixup_binary_operands (int,int,scalar_t__*) ;
 scalar_t__ reload_in_progress ;

void
ix86_expand_binary_operator (enum rtx_code code, enum machine_mode mode,
        rtx operands[])
{
  rtx src1, src2, dst, op, clob;

  dst = ix86_fixup_binary_operands (code, mode, operands);
  src1 = operands[1];
  src2 = operands[2];



  op = gen_rtx_SET (VOIDmode, dst, gen_rtx_fmt_ee (code, mode, src1, src2));
  if (reload_in_progress)
    {


      gcc_assert (code == PLUS);
      emit_insn (op);
    }
  else
    {
      clob = gen_rtx_CLOBBER (VOIDmode, gen_rtx_REG (CCmode, FLAGS_REG));
      emit_insn (gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2, op, clob)));
    }


  if (dst != operands[0])
    emit_move_insn (operands[0], dst);
}
