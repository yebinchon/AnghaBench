
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCmode ;
 int FLAGS_REG ;
 scalar_t__ MEM_P (scalar_t__) ;
 int NOT ;
 int VOIDmode ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtvec (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_CLOBBER (int ,int ) ;
 scalar_t__ gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,int ) ;
 int gen_rtx_fmt_e (int,int,scalar_t__) ;
 scalar_t__ reload_in_progress ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

void
ix86_expand_unary_operator (enum rtx_code code, enum machine_mode mode,
       rtx operands[])
{
  int matching_memory;
  rtx src, dst, op, clob;

  dst = operands[0];
  src = operands[1];



  matching_memory = 0;
  if (MEM_P (dst))
    {
      if (rtx_equal_p (dst, src))
 matching_memory = 1;
      else
 dst = gen_reg_rtx (mode);
    }


  if (MEM_P (src) && !matching_memory)
    src = force_reg (mode, src);



  op = gen_rtx_SET (VOIDmode, dst, gen_rtx_fmt_e (code, mode, src));
  if (reload_in_progress || code == NOT)
    {


      gcc_assert (code == NOT);
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
