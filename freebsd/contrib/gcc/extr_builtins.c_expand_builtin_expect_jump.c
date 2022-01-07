
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ JUMP_P (scalar_t__) ;
 int LABEL_P (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PRED_BUILTIN_EXPECT ;
 scalar_t__ SET_SRC (int ) ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ any_condjump_p (scalar_t__) ;
 scalar_t__ any_uncondjump_p (scalar_t__) ;
 int do_jump (int ,scalar_t__,scalar_t__) ;
 int end_sequence () ;
 scalar_t__ get_insns () ;
 scalar_t__ get_last_insn () ;
 scalar_t__ integer_onep (int ) ;
 scalar_t__ integer_zerop (int ) ;
 scalar_t__ next_nonnote_insn (scalar_t__) ;
 scalar_t__ pc_rtx ;
 int pc_set (scalar_t__) ;
 int predict_insn_def (scalar_t__,int ,int) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 int start_sequence () ;

rtx
expand_builtin_expect_jump (tree exp, rtx if_false_label, rtx if_true_label)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree arg0 = TREE_VALUE (arglist);
  tree arg1 = TREE_VALUE (TREE_CHAIN (arglist));
  rtx ret = NULL_RTX;



  if (TREE_CODE (TREE_TYPE (arg1)) == INTEGER_TYPE
      && (integer_zerop (arg1) || integer_onep (arg1)))
    {
      rtx insn, drop_through_label, temp;


      start_sequence ();
      do_jump (arg0, if_false_label, if_true_label);
      ret = get_insns ();

      drop_through_label = get_last_insn ();
      if (drop_through_label && NOTE_P (drop_through_label))
 drop_through_label = prev_nonnote_insn (drop_through_label);
      if (drop_through_label && !LABEL_P (drop_through_label))
 drop_through_label = NULL_RTX;
      end_sequence ();

      if (! if_true_label)
 if_true_label = drop_through_label;
      if (! if_false_label)
 if_false_label = drop_through_label;


      insn = ret;
      while (insn != NULL_RTX)
 {
   rtx next = NEXT_INSN (insn);

   if (JUMP_P (insn) && any_condjump_p (insn))
     {
       rtx ifelse = SET_SRC (pc_set (insn));
       rtx then_dest = XEXP (ifelse, 1);
       rtx else_dest = XEXP (ifelse, 2);
       int taken = -1;


       if (GET_CODE (then_dest) == LABEL_REF
    && XEXP (then_dest, 0) == if_true_label)
  taken = 1;
       else if (GET_CODE (then_dest) == LABEL_REF
         && XEXP (then_dest, 0) == if_false_label)
  taken = 0;
       else if (GET_CODE (else_dest) == LABEL_REF
         && XEXP (else_dest, 0) == if_false_label)
  taken = 1;
       else if (GET_CODE (else_dest) == LABEL_REF
         && XEXP (else_dest, 0) == if_true_label)
  taken = 0;

       else if (else_dest == pc_rtx)
  {
    if (next && NOTE_P (next))
      next = next_nonnote_insn (next);

    if (next && JUMP_P (next)
        && any_uncondjump_p (next))
      temp = XEXP (SET_SRC (pc_set (next)), 0);
    else
      temp = next;



    if (temp == if_false_label)
      taken = 1;
    else if (temp == if_true_label)
      taken = 0;
  }
       else if (then_dest == pc_rtx)
  {
    if (next && NOTE_P (next))
      next = next_nonnote_insn (next);

    if (next && JUMP_P (next)
        && any_uncondjump_p (next))
      temp = XEXP (SET_SRC (pc_set (next)), 0);
    else
      temp = next;

    if (temp == if_false_label)
      taken = 0;
    else if (temp == if_true_label)
      taken = 1;
  }

       if (taken != -1)
  {


    if (integer_zerop (arg1))
      taken = 1 - taken;
    predict_insn_def (insn, PRED_BUILTIN_EXPECT, taken);
  }
     }

   insn = next;
 }
    }

  return ret;
}
