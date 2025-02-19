
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 int GET_MODE (scalar_t__) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 scalar_t__ gen_rtx_AND (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_IOR (int,scalar_t__,scalar_t__) ;
 int gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_subreg (int,scalar_t__,int,int ) ;

void
ix86_split_copysign_const (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, op0, op1, mask, x;

  dest = operands[0];
  op0 = operands[1];
  op1 = operands[2];
  mask = operands[3];

  mode = GET_MODE (dest);
  vmode = GET_MODE (mask);

  dest = simplify_gen_subreg (vmode, dest, mode, 0);
  x = gen_rtx_AND (vmode, dest, mask);
  emit_insn (gen_rtx_SET (VOIDmode, dest, x));

  if (op0 != CONST0_RTX (vmode))
    {
      x = gen_rtx_IOR (vmode, dest, op0);
      emit_insn (gen_rtx_SET (VOIDmode, dest, x));
    }
}
