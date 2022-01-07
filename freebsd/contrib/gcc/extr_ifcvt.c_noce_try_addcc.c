
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {int insn_a; int jump; scalar_t__ x; int b; scalar_t__ a; scalar_t__ cond; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int BRANCH_COST ;
 int FALSE ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GEU ;
 int GTU ;
 int INSN_LOCATOR (int ) ;
 int INTVAL (int ) ;
 int LEU ;
 int LTU ;
 scalar_t__ MINUS ;
 int OPTAB_WIDEN ;
 scalar_t__ PLUS ;
 int STORE_FLAG_VALUE ;
 int TRUE ;
 scalar_t__ UNKNOWN ;
 int VOIDmode ;
 int XEXP (scalar_t__,int) ;
 int const1_rtx ;
 int constm1_rtx ;
 scalar_t__ emit_conditional_add (scalar_t__,int,int ,int ,int ,int ,int ,int ,int) ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 scalar_t__ expand_simple_binop (int ,scalar_t__,int ,scalar_t__,scalar_t__,int ,int ) ;
 int gen_reg_rtx (int ) ;
 scalar_t__ general_operand (int ,int ) ;
 int no_new_pseudos ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ noce_emit_store_flag (struct noce_if_info*,int ,int,int) ;
 scalar_t__ reversed_comparison_code (scalar_t__,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_addcc (struct noce_if_info *if_info)
{
  rtx target, seq;
  int subtract, normalize;

  if (! no_new_pseudos
      && GET_CODE (if_info->a) == PLUS
      && rtx_equal_p (XEXP (if_info->a, 0), if_info->b)
      && (reversed_comparison_code (if_info->cond, if_info->jump)
   != UNKNOWN))
    {
      rtx cond = if_info->cond;
      enum rtx_code code = reversed_comparison_code (cond, if_info->jump);


      if (general_operand (XEXP (cond, 0), VOIDmode)
   && general_operand (XEXP (cond, 1), VOIDmode))
 {
   start_sequence ();
   target = emit_conditional_add (if_info->x, code,
      XEXP (cond, 0),
      XEXP (cond, 1),
      VOIDmode,
      if_info->b,
      XEXP (if_info->a, 1),
      GET_MODE (if_info->x),
      (code == LTU || code == GEU
       || code == LEU || code == GTU));
   if (target)
     {
       if (target != if_info->x)
  noce_emit_move_insn (if_info->x, target);

       seq = end_ifcvt_sequence (if_info);
       if (!seq)
  return FALSE;

       emit_insn_before_setloc (seq, if_info->jump,
           INSN_LOCATOR (if_info->insn_a));
       return TRUE;
     }
   end_sequence ();
 }



      if (BRANCH_COST >= 2
   && (XEXP (if_info->a, 1) == const1_rtx
       || XEXP (if_info->a, 1) == constm1_rtx))
        {
   start_sequence ();
   if (STORE_FLAG_VALUE == INTVAL (XEXP (if_info->a, 1)))
     subtract = 0, normalize = 0;
   else if (-STORE_FLAG_VALUE == INTVAL (XEXP (if_info->a, 1)))
     subtract = 1, normalize = 0;
   else
     subtract = 0, normalize = INTVAL (XEXP (if_info->a, 1));


   target = noce_emit_store_flag (if_info,
      gen_reg_rtx (GET_MODE (if_info->x)),
      1, normalize);

   if (target)
     target = expand_simple_binop (GET_MODE (if_info->x),
       subtract ? MINUS : PLUS,
       if_info->b, target, if_info->x,
       0, OPTAB_WIDEN);
   if (target)
     {
       if (target != if_info->x)
  noce_emit_move_insn (if_info->x, target);

       seq = end_ifcvt_sequence (if_info);
       if (!seq)
  return FALSE;

       emit_insn_before_setloc (seq, if_info->jump,
           INSN_LOCATOR (if_info->insn_a));
       return TRUE;
     }
   end_sequence ();
 }
    }

  return FALSE;
}
