
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ a; scalar_t__ b; int insn_a; int jump; scalar_t__ x; int cond; } ;
typedef scalar_t__ rtx ;


 int AND ;
 int BRANCH_COST ;
 int FALSE ;
 int GET_MODE (scalar_t__) ;
 int INSN_LOCATOR (int ) ;
 int OPTAB_WIDEN ;
 int STORE_FLAG_VALUE ;
 int TRUE ;
 scalar_t__ UNKNOWN ;
 scalar_t__ const0_rtx ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 scalar_t__ expand_simple_binop (int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int gen_reg_rtx (int ) ;
 int no_new_pseudos ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ noce_emit_store_flag (struct noce_if_info*,int ,int,int) ;
 scalar_t__ reversed_comparison_code (int ,int ) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_store_flag_mask (struct noce_if_info *if_info)
{
  rtx target, seq;
  int reversep;

  reversep = 0;
  if (! no_new_pseudos
      && (BRANCH_COST >= 2
   || STORE_FLAG_VALUE == -1)
      && ((if_info->a == const0_rtx
    && rtx_equal_p (if_info->b, if_info->x))
   || ((reversep = (reversed_comparison_code (if_info->cond,
           if_info->jump)
      != UNKNOWN))
       && if_info->b == const0_rtx
       && rtx_equal_p (if_info->a, if_info->x))))
    {
      start_sequence ();
      target = noce_emit_store_flag (if_info,
         gen_reg_rtx (GET_MODE (if_info->x)),
         reversep, -1);
      if (target)
        target = expand_simple_binop (GET_MODE (if_info->x), AND,
          if_info->x,
          target, if_info->x, 0,
          OPTAB_WIDEN);

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

  return FALSE;
}
