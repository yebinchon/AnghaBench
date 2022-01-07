
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 int DImode ;
 int GEN_INT (int const) ;
 scalar_t__ GET_CODE (int ) ;
 int const INTVAL (int ) ;
 scalar_t__ TARGET_CMOVE ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_ashrdi3 (int ,int ,int ) ;
 int gen_ashrsi3 (int ,int ,int ) ;
 int gen_x86_64_shift_adj (int ,int ,int ,int ) ;
 int gen_x86_64_shrd (int ,int ,int ) ;
 int gen_x86_shift_adj_1 (int ,int ,int ,int ) ;
 int gen_x86_shift_adj_3 (int ,int ,int ) ;
 int gen_x86_shrd_1 (int ,int ,int ) ;
 int rtx_equal_p (int ,int ) ;
 int split_di (int *,int,int *,int *) ;
 int split_ti (int *,int,int *,int *) ;
 int stub1 (int *,int,int *,int *) ;
 int stub10 (int ,int ,int ) ;
 int stub11 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int *,int,int *,int *) ;
 int stub8 (int ,int ,int ) ;
 int stub9 (int ,int ,int ) ;

void
ix86_split_ashr (rtx *operands, rtx scratch, enum machine_mode mode)
{
  rtx low[2], high[2];
  int count;
  const int single_width = mode == DImode ? 32 : 64;

  if (GET_CODE (operands[2]) == CONST_INT)
    {
      (mode == DImode ? split_di : split_ti) (operands, 2, low, high);
      count = INTVAL (operands[2]) & (single_width * 2 - 1);

      if (count == single_width * 2 - 1)
 {
   emit_move_insn (high[0], high[1]);
   emit_insn ((mode == DImode
        ? gen_ashrsi3
        : gen_ashrdi3) (high[0], high[0],
          GEN_INT (single_width - 1)));
   emit_move_insn (low[0], high[0]);

 }
      else if (count >= single_width)
 {
   emit_move_insn (low[0], high[1]);
   emit_move_insn (high[0], low[0]);
   emit_insn ((mode == DImode
        ? gen_ashrsi3
        : gen_ashrdi3) (high[0], high[0],
          GEN_INT (single_width - 1)));
   if (count > single_width)
     emit_insn ((mode == DImode
   ? gen_ashrsi3
   : gen_ashrdi3) (low[0], low[0],
     GEN_INT (count - single_width)));
 }
      else
 {
   if (!rtx_equal_p (operands[0], operands[1]))
     emit_move_insn (operands[0], operands[1]);
   emit_insn ((mode == DImode
        ? gen_x86_shrd_1
        : gen_x86_64_shrd) (low[0], high[0], GEN_INT (count)));
   emit_insn ((mode == DImode
        ? gen_ashrsi3
        : gen_ashrdi3) (high[0], high[0], GEN_INT (count)));
 }
    }
  else
    {
      if (!rtx_equal_p (operands[0], operands[1]))
 emit_move_insn (operands[0], operands[1]);

      (mode == DImode ? split_di : split_ti) (operands, 1, low, high);

      emit_insn ((mode == DImode
    ? gen_x86_shrd_1
    : gen_x86_64_shrd) (low[0], high[0], operands[2]));
      emit_insn ((mode == DImode
    ? gen_ashrsi3
    : gen_ashrdi3) (high[0], high[0], operands[2]));

      if (TARGET_CMOVE && scratch)
 {
   emit_move_insn (scratch, high[0]);
   emit_insn ((mode == DImode
        ? gen_ashrsi3
        : gen_ashrdi3) (scratch, scratch,
          GEN_INT (single_width - 1)));
   emit_insn ((mode == DImode
        ? gen_x86_shift_adj_1
        : gen_x86_64_shift_adj) (low[0], high[0], operands[2],
      scratch));
 }
      else
 emit_insn (gen_x86_shift_adj_3 (low[0], high[0], operands[2]));
    }
}
