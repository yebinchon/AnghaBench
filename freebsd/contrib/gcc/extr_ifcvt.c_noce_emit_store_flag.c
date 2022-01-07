
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {int jump; int cond_earliest; int cond; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GEU ;
 int GTU ;
 int LEU ;
 int LTU ;
 int NULL_RTX ;
 int SCALAR_INT_MODE_P (int ) ;
 int SET_SRC (int ) ;
 int STORE_FLAG_VALUE ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int emit_insn (int ) ;
 int emit_store_flag (int ,int,int ,int ,int ,int,int) ;
 int end_sequence () ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int general_operand (int ,int ) ;
 int get_insns () ;
 int pc_set (int ) ;
 scalar_t__ recog_memoized (int ) ;
 int reversed_comparison_code (int ,int ) ;
 int start_sequence () ;

__attribute__((used)) static rtx
noce_emit_store_flag (struct noce_if_info *if_info, rtx x, int reversep,
        int normalize)
{
  rtx cond = if_info->cond;
  int cond_complex;
  enum rtx_code code;

  cond_complex = (! general_operand (XEXP (cond, 0), VOIDmode)
    || ! general_operand (XEXP (cond, 1), VOIDmode));




  if (cond_complex)
    cond = XEXP (SET_SRC (pc_set (if_info->jump)), 0);

  if (reversep)
    code = reversed_comparison_code (cond, if_info->jump);
  else
    code = GET_CODE (cond);

  if ((if_info->cond_earliest == if_info->jump || cond_complex)
      && (normalize == 0 || STORE_FLAG_VALUE == normalize))
    {
      rtx tmp;

      tmp = gen_rtx_fmt_ee (code, GET_MODE (x), XEXP (cond, 0),
       XEXP (cond, 1));
      tmp = gen_rtx_SET (VOIDmode, x, tmp);

      start_sequence ();
      tmp = emit_insn (tmp);

      if (recog_memoized (tmp) >= 0)
 {
   tmp = get_insns ();
   end_sequence ();
   emit_insn (tmp);

   if_info->cond_earliest = if_info->jump;

   return x;
 }

      end_sequence ();
    }


  if (cond_complex || !SCALAR_INT_MODE_P (GET_MODE (x)))
    return NULL_RTX;

  return emit_store_flag (x, code, XEXP (cond, 0),
     XEXP (cond, 1), VOIDmode,
     (code == LTU || code == LEU
      || code == GEU || code == GTU), normalize);
}
