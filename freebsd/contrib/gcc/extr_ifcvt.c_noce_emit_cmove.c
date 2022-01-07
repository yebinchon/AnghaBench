
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ cond_earliest; scalar_t__ jump; int cond; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_MODE (int ) ;
 int GEU ;
 int GTU ;
 int LEU ;
 int LTU ;
 int NULL_RTX ;
 int VOIDmode ;
 int emit_conditional_move (int ,int,int ,int ,int ,int ,int ,int ,int) ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int gen_rtx_IF_THEN_ELSE (int ,int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int general_operand (int ,int ) ;
 int get_insns () ;
 scalar_t__ recog_memoized (int ) ;
 int start_sequence () ;

__attribute__((used)) static rtx
noce_emit_cmove (struct noce_if_info *if_info, rtx x, enum rtx_code code,
   rtx cmp_a, rtx cmp_b, rtx vfalse, rtx vtrue)
{





  if (if_info->cond_earliest == if_info->jump)
    {
      rtx tmp;

      tmp = gen_rtx_fmt_ee (code, GET_MODE (if_info->cond), cmp_a, cmp_b);
      tmp = gen_rtx_IF_THEN_ELSE (GET_MODE (x), tmp, vtrue, vfalse);
      tmp = gen_rtx_SET (VOIDmode, x, tmp);

      start_sequence ();
      tmp = emit_insn (tmp);

      if (recog_memoized (tmp) >= 0)
 {
   tmp = get_insns ();
   end_sequence ();
   emit_insn (tmp);

   return x;
 }

      end_sequence ();
    }


  if (! general_operand (cmp_a, GET_MODE (cmp_a))
      || ! general_operand (cmp_b, GET_MODE (cmp_b)))
    return NULL_RTX;
  return NULL_RTX;

}
