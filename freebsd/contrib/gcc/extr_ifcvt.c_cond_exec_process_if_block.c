
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_9__ {scalar_t__ test_bb; scalar_t__ then_bb; scalar_t__ else_bb; scalar_t__ num_multiple_test_blocks; scalar_t__ last_test_bb; int num_then_insns; int num_else_insns; scalar_t__ and_and_p; scalar_t__ num_or_or_blocks; scalar_t__ num_and_and_blocks; } ;
typedef TYPE_1__ ce_if_block_t ;
typedef scalar_t__ basic_block ;


 int BB_END (scalar_t__) ;
 int FALSE ;
 scalar_t__ GEN_INT (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int IFCVT_MODIFY_CANCEL (TYPE_1__*) ;
 int IFCVT_MODIFY_FINAL (TYPE_1__*) ;
 int IFCVT_MODIFY_MULTIPLE_TESTS (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int IFCVT_MODIFY_TESTS (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ INTVAL (scalar_t__) ;
 int MAX_CONDITIONAL_EXECUTE ;
 scalar_t__ NULL_BLOCK ;
 scalar_t__ NULL_RTX ;
 int REG_BR_PROB ;
 scalar_t__ REG_BR_PROB_BASE ;
 int TRUE ;
 int UNKNOWN ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int apply_change_group () ;
 scalar_t__ block_fallthru (scalar_t__) ;
 int cancel_changes (int ) ;
 int cond_exec_changed_p ;
 scalar_t__ cond_exec_get_condition (int ) ;
 int cond_exec_process_insns (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 void* count_bb_insns (scalar_t__) ;
 scalar_t__ dump_file ;
 scalar_t__ find_reg_note (int ,int ,scalar_t__) ;
 scalar_t__ first_active_insn (scalar_t__) ;
 int fprintf (scalar_t__,char*,int,char*) ;
 scalar_t__ gen_rtx_AND (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_IOR (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ last_active_insn (scalar_t__,int) ;
 int merge_if_block (TYPE_1__*) ;
 int onlyjump_p (int ) ;
 int reversed_comparison_code (scalar_t__,int ) ;

__attribute__((used)) static int
cond_exec_process_if_block (ce_if_block_t * ce_info,
                                 int do_multiple_p)
{
  basic_block test_bb = ce_info->test_bb;
  basic_block then_bb = ce_info->then_bb;
  basic_block else_bb = ce_info->else_bb;
  rtx test_expr;
  rtx then_start;
  rtx then_end;
  rtx else_start = NULL_RTX;
  rtx else_end = NULL_RTX;
  int max;
  int then_mod_ok;
  rtx true_expr;
  rtx false_expr;
  rtx true_prob_val;
  rtx false_prob_val;
  int n_insns;
  enum rtx_code false_code;




  if (!do_multiple_p && ce_info->num_multiple_test_blocks)
    {
      if (else_bb || ! ce_info->and_and_p)
 return FALSE;

      ce_info->test_bb = test_bb = ce_info->last_test_bb;
      ce_info->num_multiple_test_blocks = 0;
      ce_info->num_and_and_blocks = 0;
      ce_info->num_or_or_blocks = 0;
    }



  test_expr = cond_exec_get_condition (BB_END (test_bb));
  if (! test_expr)
    return FALSE;



  if (! onlyjump_p (BB_END (test_bb)))
    return FALSE;




  then_start = first_active_insn (then_bb);
  then_end = last_active_insn (then_bb, TRUE);
  n_insns = ce_info->num_then_insns = count_bb_insns (then_bb);
  max = MAX_CONDITIONAL_EXECUTE;

  if (else_bb)
    {
      max *= 2;
      else_start = first_active_insn (else_bb);
      else_end = last_active_insn (else_bb, TRUE);
      n_insns += ce_info->num_else_insns = count_bb_insns (else_bb);
    }

  if (n_insns > max)
    return FALSE;




  true_expr = test_expr;

  false_code = reversed_comparison_code (true_expr, BB_END (test_bb));
  if (false_code != UNKNOWN)
    false_expr = gen_rtx_fmt_ee (false_code, GET_MODE (true_expr),
     XEXP (true_expr, 0), XEXP (true_expr, 1));
  else
    false_expr = NULL_RTX;
  true_prob_val = find_reg_note (BB_END (test_bb), REG_BR_PROB, NULL_RTX);
  if (true_prob_val)
    {
      true_prob_val = XEXP (true_prob_val, 0);
      false_prob_val = GEN_INT (REG_BR_PROB_BASE - INTVAL (true_prob_val));
    }
  else
    false_prob_val = NULL_RTX;



  if (ce_info->num_multiple_test_blocks > 0)
    {
      basic_block bb = test_bb;
      basic_block last_test_bb = ce_info->last_test_bb;

      if (! false_expr)
 goto fail;

      do
 {
   rtx start, end;
   rtx t, f;
   enum rtx_code f_code;

   bb = block_fallthru (bb);
   start = first_active_insn (bb);
   end = last_active_insn (bb, TRUE);
   if (start
       && ! cond_exec_process_insns (ce_info, start, end, false_expr,
         false_prob_val, FALSE))
     goto fail;



   if (! onlyjump_p (BB_END (bb)))
     goto fail;


   t = cond_exec_get_condition (BB_END (bb));
   if (! t)
     goto fail;

   f_code = reversed_comparison_code (t, BB_END (bb));
   if (f_code == UNKNOWN)
     goto fail;

   f = gen_rtx_fmt_ee (f_code, GET_MODE (t), XEXP (t, 0), XEXP (t, 1));
   if (ce_info->and_and_p)
     {
       t = gen_rtx_AND (GET_MODE (t), true_expr, t);
       f = gen_rtx_IOR (GET_MODE (t), false_expr, f);
     }
   else
     {
       t = gen_rtx_IOR (GET_MODE (t), true_expr, t);
       f = gen_rtx_AND (GET_MODE (t), false_expr, f);
     }
   true_expr = t;
   false_expr = f;
 }
      while (bb != last_test_bb);
    }



  then_mod_ok = (else_bb == NULL_BLOCK);




  if (then_end
      && (! false_expr
   || ! cond_exec_process_insns (ce_info, then_start, then_end,
     false_expr, false_prob_val,
     then_mod_ok)))
    goto fail;

  if (else_bb && else_end
      && ! cond_exec_process_insns (ce_info, else_start, else_end,
        true_expr, true_prob_val, TRUE))
    goto fail;



  if (! apply_change_group ())
    {




      return FALSE;
    }







  if (dump_file)
    fprintf (dump_file, "%d insn%s converted to conditional execution.\n",
      n_insns, (n_insns == 1) ? " was" : "s were");


  merge_if_block (ce_info);
  cond_exec_changed_p = TRUE;
  return TRUE;

 fail:





  cancel_changes (0);
  return FALSE;
}
