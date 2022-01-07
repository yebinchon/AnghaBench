
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gcc_assert (int) ;
 int gen_rtx_AND (int,int ,int ) ;
 int gen_rtx_IOR (int,int ,int ) ;
 int gen_rtx_NOT (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int simplify_gen_subreg (int,int ,int,int ) ;

void
ix86_split_copysign_var (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, scratch, op0, op1, mask, nmask, x;

  dest = operands[0];
  scratch = operands[1];
  op0 = operands[2];
  op1 = operands[3];
  nmask = operands[4];
  mask = operands[5];

  mode = GET_MODE (dest);
  vmode = GET_MODE (mask);

  if (rtx_equal_p (op0, op1))
    {


      emit_move_insn (dest, op0);
      return;
    }

  if (REG_P (mask) && REGNO (dest) == REGNO (mask))
    {
      gcc_assert (REGNO (op1) == REGNO (scratch));

      x = gen_rtx_AND (vmode, scratch, mask);
      emit_insn (gen_rtx_SET (VOIDmode, scratch, x));

      dest = mask;
      op0 = simplify_gen_subreg (vmode, op0, mode, 0);
      x = gen_rtx_NOT (vmode, dest);
      x = gen_rtx_AND (vmode, x, op0);
      emit_insn (gen_rtx_SET (VOIDmode, dest, x));
    }
  else
    {
      if (REGNO (op1) == REGNO (scratch))
 {
   x = gen_rtx_AND (vmode, scratch, mask);
 }
      else
 {
          gcc_assert (REGNO (mask) == REGNO (scratch));
          op1 = simplify_gen_subreg (vmode, op1, mode, 0);
   x = gen_rtx_AND (vmode, scratch, op1);
 }
      emit_insn (gen_rtx_SET (VOIDmode, scratch, x));

      if (REGNO (op0) == REGNO (dest))
 {
   dest = simplify_gen_subreg (vmode, op0, mode, 0);
   x = gen_rtx_AND (vmode, dest, nmask);
 }
      else
 {
          gcc_assert (REGNO (nmask) == REGNO (dest));
   dest = nmask;
   op0 = simplify_gen_subreg (vmode, op0, mode, 0);
   x = gen_rtx_AND (vmode, dest, op0);
 }
      emit_insn (gen_rtx_SET (VOIDmode, dest, x));
    }

  x = gen_rtx_IOR (vmode, dest, scratch);
  emit_insn (gen_rtx_SET (VOIDmode, dest, x));
}
