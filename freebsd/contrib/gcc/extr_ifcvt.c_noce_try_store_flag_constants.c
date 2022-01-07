
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {int insn_a; int jump; scalar_t__ x; int cond; int b; int a; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ HOST_WIDE_INT ;


 int AND ;
 int ASHIFT ;
 int BRANCH_COST ;
 scalar_t__ CONST_INT ;
 int FALSE ;
 scalar_t__ GEN_INT (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (scalar_t__) ;
 int INSN_LOCATOR (int ) ;
 scalar_t__ INTVAL (int ) ;
 int IOR ;
 int MINUS ;
 int OPTAB_WIDEN ;
 int PLUS ;
 scalar_t__ STORE_FLAG_VALUE ;
 int TRUE ;
 scalar_t__ UNKNOWN ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 scalar_t__ exact_log2 (scalar_t__) ;
 scalar_t__ expand_simple_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int no_new_pseudos ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ noce_emit_store_flag (struct noce_if_info*,scalar_t__,int,int) ;
 scalar_t__ reversed_comparison_code (int ,int ) ;
 int start_sequence () ;
 scalar_t__ trunc_int_for_mode (scalar_t__,int) ;

__attribute__((used)) static int
noce_try_store_flag_constants (struct noce_if_info *if_info)
{
  rtx target, seq;
  int reversep;
  HOST_WIDE_INT itrue, ifalse, diff, tmp;
  int normalize, can_reverse;
  enum machine_mode mode;

  if (! no_new_pseudos
      && GET_CODE (if_info->a) == CONST_INT
      && GET_CODE (if_info->b) == CONST_INT)
    {
      mode = GET_MODE (if_info->x);
      ifalse = INTVAL (if_info->a);
      itrue = INTVAL (if_info->b);


      if ((itrue - ifalse > 0)
   != ((ifalse < 0) != (itrue < 0) ? ifalse < 0 : ifalse < itrue))
 return FALSE;

      diff = trunc_int_for_mode (itrue - ifalse, mode);

      can_reverse = (reversed_comparison_code (if_info->cond, if_info->jump)
       != UNKNOWN);

      reversep = 0;
      if (diff == STORE_FLAG_VALUE || diff == -STORE_FLAG_VALUE)
 normalize = 0;
      else if (ifalse == 0 && exact_log2 (itrue) >= 0
        && (STORE_FLAG_VALUE == 1
     || BRANCH_COST >= 2))
 normalize = 1;
      else if (itrue == 0 && exact_log2 (ifalse) >= 0 && can_reverse
        && (STORE_FLAG_VALUE == 1 || BRANCH_COST >= 2))
 normalize = 1, reversep = 1;
      else if (itrue == -1
        && (STORE_FLAG_VALUE == -1
     || BRANCH_COST >= 2))
 normalize = -1;
      else if (ifalse == -1 && can_reverse
        && (STORE_FLAG_VALUE == -1 || BRANCH_COST >= 2))
 normalize = -1, reversep = 1;
      else if ((BRANCH_COST >= 2 && STORE_FLAG_VALUE == -1)
        || BRANCH_COST >= 3)
 normalize = -1;
      else
 return FALSE;

      if (reversep)
 {
   tmp = itrue; itrue = ifalse; ifalse = tmp;
   diff = trunc_int_for_mode (-diff, mode);
 }

      start_sequence ();
      target = noce_emit_store_flag (if_info, if_info->x, reversep, normalize);
      if (! target)
 {
   end_sequence ();
   return FALSE;
 }



      if (diff == STORE_FLAG_VALUE || diff == -STORE_FLAG_VALUE)
 {
   target = expand_simple_binop (mode,
     (diff == STORE_FLAG_VALUE
      ? PLUS : MINUS),
     GEN_INT (ifalse), target, if_info->x, 0,
     OPTAB_WIDEN);
 }



      else if (ifalse == 0 && (tmp = exact_log2 (itrue)) >= 0)
 {
   target = expand_simple_binop (mode, ASHIFT,
     target, GEN_INT (tmp), if_info->x, 0,
     OPTAB_WIDEN);
 }



      else if (itrue == -1)
 {
   target = expand_simple_binop (mode, IOR,
     target, GEN_INT (ifalse), if_info->x, 0,
     OPTAB_WIDEN);
 }



      else
 {
   target = expand_simple_binop (mode, AND,
     target, GEN_INT (diff), if_info->x, 0,
     OPTAB_WIDEN);
   if (target)
     target = expand_simple_binop (mode, PLUS,
       target, GEN_INT (ifalse),
       if_info->x, 0, OPTAB_WIDEN);
 }

      if (! target)
 {
   end_sequence ();
   return FALSE;
 }

      if (target != if_info->x)
 noce_emit_move_insn (if_info->x, target);

      seq = end_ifcvt_sequence (if_info);
      if (!seq)
 return FALSE;

      emit_insn_before_setloc (seq, if_info->jump,
          INSN_LOCATOR (if_info->insn_a));
      return TRUE;
    }

  return FALSE;
}
