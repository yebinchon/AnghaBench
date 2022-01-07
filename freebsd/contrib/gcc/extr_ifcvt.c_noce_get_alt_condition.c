
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ cond; scalar_t__ cond_earliest; scalar_t__ jump; int b; int a; int x; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;

 scalar_t__ GEN_INT (int ) ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;

 scalar_t__ INSN_P (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 scalar_t__ JUMP_LABEL (scalar_t__) ;
 scalar_t__ LABEL_REF ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ SET ;
 int SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ canonicalize_condition (scalar_t__,scalar_t__,int,scalar_t__*,scalar_t__,int,int) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ modified_in_p (int ,scalar_t__) ;
 scalar_t__ pc_set (scalar_t__) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 scalar_t__ reg_mentioned_p (scalar_t__,scalar_t__) ;
 scalar_t__ reg_overlap_mentioned_p (int ,scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,int ) ;
 int swap_condition (int) ;

__attribute__((used)) static rtx
noce_get_alt_condition (struct noce_if_info *if_info, rtx target,
   rtx *earliest)
{
  rtx cond, set, insn;
  int reverse;


  if (reg_mentioned_p (target, if_info->cond))
    {
      *earliest = if_info->cond_earliest;
      return if_info->cond;
    }

  set = pc_set (if_info->jump);
  cond = XEXP (SET_SRC (set), 0);
  reverse
    = GET_CODE (XEXP (SET_SRC (set), 2)) == LABEL_REF
      && XEXP (XEXP (SET_SRC (set), 2), 0) == JUMP_LABEL (if_info->jump);
  if (GET_CODE (target) == CONST_INT)
    {
      enum rtx_code code = GET_CODE (if_info->cond);
      rtx op_a = XEXP (if_info->cond, 0);
      rtx op_b = XEXP (if_info->cond, 1);
      rtx prev_insn;


      prev_insn = prev_nonnote_insn (if_info->cond_earliest);
      if (prev_insn
   && INSN_P (prev_insn)
   && GET_CODE (PATTERN (prev_insn)) == SET)
 {
   rtx src = find_reg_equal_equiv_note (prev_insn);
   if (!src)
     src = SET_SRC (PATTERN (prev_insn));
   if (GET_CODE (src) == CONST_INT)
     {
       if (rtx_equal_p (op_a, SET_DEST (PATTERN (prev_insn))))
  op_a = src;
       else if (rtx_equal_p (op_b, SET_DEST (PATTERN (prev_insn))))
  op_b = src;

       if (GET_CODE (op_a) == CONST_INT)
  {
    rtx tmp = op_a;
    op_a = op_b;
    op_b = tmp;
    code = swap_condition (code);
  }
     }
 }



      if (GET_CODE (op_b) == CONST_INT)
 {
   HOST_WIDE_INT desired_val = INTVAL (target);
   HOST_WIDE_INT actual_val = INTVAL (op_b);

   switch (code)
     {
     case 128:
       if (actual_val == desired_val + 1)
  {
    code = 129;
    op_b = GEN_INT (desired_val);
  }
       break;
     case 129:
       if (actual_val == desired_val - 1)
  {
    code = 128;
    op_b = GEN_INT (desired_val);
  }
       break;
     case 130:
       if (actual_val == desired_val - 1)
  {
    code = 131;
    op_b = GEN_INT (desired_val);
  }
       break;
     case 131:
       if (actual_val == desired_val + 1)
  {
    code = 130;
    op_b = GEN_INT (desired_val);
  }
       break;
     default:
       break;
     }
 }




      if (code != GET_CODE (if_info->cond)
   || op_a != XEXP (if_info->cond, 0)
   || op_b != XEXP (if_info->cond, 1))
 {
   cond = gen_rtx_fmt_ee (code, GET_MODE (cond), op_a, op_b);
   *earliest = if_info->cond_earliest;
   return cond;
 }
    }

  cond = canonicalize_condition (if_info->jump, cond, reverse,
     earliest, target, 0, 1);
  if (! cond || ! reg_mentioned_p (target, cond))
    return ((void*)0);





  for (insn = if_info->jump; insn != *earliest; insn = PREV_INSN (insn))
    if (INSN_P (insn) && reg_overlap_mentioned_p (if_info->x, PATTERN (insn)))
      return ((void*)0);


  for (insn = *earliest; insn != if_info->jump; insn = NEXT_INSN (insn))
    if (INSN_P (insn)
 && (modified_in_p (if_info->a, insn)
     || modified_in_p (if_info->b, insn)))
      return ((void*)0);

  return cond;
}
