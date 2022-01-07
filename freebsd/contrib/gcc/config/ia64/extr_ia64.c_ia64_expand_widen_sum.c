
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;
 int GET_MODE (int ) ;
 int LT ;


 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int gen_addv2si3 (int ,int ,int ) ;
 int gen_addv4hi3 (int ,int ,int ) ;
 int gen_lowpart (int,int ) ;
 int gen_reg_rtx (int) ;
 int gen_unpack1_h (int ,int ,int ) ;
 int gen_unpack1_l (int ,int ,int ) ;
 int gen_unpack2_h (int ,int ,int ) ;
 int gen_unpack2_l (int ,int ,int ) ;
 int ia64_expand_vecint_compare (int ,int,int ,int ,int ) ;

void
ia64_expand_widen_sum (rtx operands[3], bool unsignedp)
{
  rtx l, h, x, s;
  enum machine_mode wmode, mode;
  rtx (*unpack_l) (rtx, rtx, rtx);
  rtx (*unpack_h) (rtx, rtx, rtx);
  rtx (*plus) (rtx, rtx, rtx);

  wmode = GET_MODE (operands[0]);
  mode = GET_MODE (operands[1]);

  switch (mode)
    {
    case 128:
      unpack_l = gen_unpack1_l;
      unpack_h = gen_unpack1_h;
      plus = gen_addv4hi3;
      break;
    case 129:
      unpack_l = gen_unpack2_l;
      unpack_h = gen_unpack2_h;
      plus = gen_addv2si3;
      break;
    default:
      gcc_unreachable ();
    }


  if (unsignedp)
    x = CONST0_RTX (mode);
  else
    {
      bool neg;

      x = gen_reg_rtx (mode);

      neg = ia64_expand_vecint_compare (LT, mode, x, operands[1],
     CONST0_RTX (mode));
      gcc_assert (!neg);
    }

  l = gen_reg_rtx (wmode);
  h = gen_reg_rtx (wmode);
  s = gen_reg_rtx (wmode);

  emit_insn (unpack_l (gen_lowpart (mode, l), operands[1], x));
  emit_insn (unpack_h (gen_lowpart (mode, h), operands[1], x));
  emit_insn (plus (s, l, operands[2]));
  emit_insn (plus (operands[0], h, s));
}
