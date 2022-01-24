#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_9__ {scalar_t__ test_bb; scalar_t__ then_bb; scalar_t__ else_bb; scalar_t__ num_multiple_test_blocks; scalar_t__ last_test_bb; int num_then_insns; int num_else_insns; scalar_t__ and_and_p; scalar_t__ num_or_or_blocks; scalar_t__ num_and_and_blocks; } ;
typedef  TYPE_1__ ce_if_block_t ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int MAX_CONDITIONAL_EXECUTE ; 
 scalar_t__ NULL_BLOCK ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  REG_BR_PROB ; 
 scalar_t__ REG_BR_PROB_BASE ; 
 int TRUE ; 
 int UNKNOWN ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int cond_exec_changed_p ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 void* FUNC14 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,char*,int,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25 (ce_if_block_t * ce_info,
			    /* if block information */int do_multiple_p)
{
  basic_block test_bb = ce_info->test_bb;	/* last test block */
  basic_block then_bb = ce_info->then_bb;	/* THEN */
  basic_block else_bb = ce_info->else_bb;	/* ELSE or NULL */
  rtx test_expr;		/* expression in IF_THEN_ELSE that is tested */
  rtx then_start;		/* first insn in THEN block */
  rtx then_end;			/* last insn + 1 in THEN block */
  rtx else_start = NULL_RTX;	/* first insn in ELSE block or NULL */
  rtx else_end = NULL_RTX;	/* last insn + 1 in ELSE block */
  int max;			/* max # of insns to convert.  */
  int then_mod_ok;		/* whether conditional mods are ok in THEN */
  rtx true_expr;		/* test for else block insns */
  rtx false_expr;		/* test for then block insns */
  rtx true_prob_val;		/* probability of else block */
  rtx false_prob_val;		/* probability of then block */
  int n_insns;
  enum rtx_code false_code;

  /* If test is comprised of && or || elements, and we've failed at handling
     all of them together, just use the last test if it is the special case of
     && elements without an ELSE block.  */
  if (!do_multiple_p && ce_info->num_multiple_test_blocks)
    {
      if (else_bb || ! ce_info->and_and_p)
	return FALSE;

      ce_info->test_bb = test_bb = ce_info->last_test_bb;
      ce_info->num_multiple_test_blocks = 0;
      ce_info->num_and_and_blocks = 0;
      ce_info->num_or_or_blocks = 0;
    }

  /* Find the conditional jump to the ELSE or JOIN part, and isolate
     the test.  */
  test_expr = FUNC12 (FUNC0 (test_bb));
  if (! test_expr)
    return FALSE;

  /* If the conditional jump is more than just a conditional jump,
     then we can not do conditional execution conversion on this block.  */
  if (! FUNC23 (FUNC0 (test_bb)))
    return FALSE;

  /* Collect the bounds of where we're to search, skipping any labels, jumps
     and notes at the beginning and end of the block.  Then count the total
     number of insns and see if it is small enough to convert.  */
  then_start = FUNC16 (then_bb);
  then_end = FUNC21 (then_bb, TRUE);
  n_insns = ce_info->num_then_insns = FUNC14 (then_bb);
  max = MAX_CONDITIONAL_EXECUTE;

  if (else_bb)
    {
      max *= 2;
      else_start = FUNC16 (else_bb);
      else_end = FUNC21 (else_bb, TRUE);
      n_insns += ce_info->num_else_insns = FUNC14 (else_bb);
    }

  if (n_insns > max)
    return FALSE;

  /* Map test_expr/test_jump into the appropriate MD tests to use on
     the conditionally executed code.  */

  true_expr = test_expr;

  false_code = FUNC24 (true_expr, FUNC0 (test_bb));
  if (false_code != UNKNOWN)
    false_expr = FUNC20 (false_code, FUNC2 (true_expr),
				 FUNC8 (true_expr, 0), FUNC8 (true_expr, 1));
  else
    false_expr = NULL_RTX;

#ifdef IFCVT_MODIFY_TESTS
  /* If the machine description needs to modify the tests, such as setting a
     conditional execution register from a comparison, it can do so here.  */
  IFCVT_MODIFY_TESTS (ce_info, true_expr, false_expr);

  /* See if the conversion failed.  */
  if (!true_expr || !false_expr)
    goto fail;
#endif

  true_prob_val = FUNC15 (FUNC0 (test_bb), REG_BR_PROB, NULL_RTX);
  if (true_prob_val)
    {
      true_prob_val = FUNC8 (true_prob_val, 0);
      false_prob_val = FUNC1 (REG_BR_PROB_BASE - FUNC7 (true_prob_val));
    }
  else
    false_prob_val = NULL_RTX;

  /* If we have && or || tests, do them here.  These tests are in the adjacent
     blocks after the first block containing the test.  */
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

	  bb = FUNC10 (bb);
	  start = FUNC16 (bb);
	  end = FUNC21 (bb, TRUE);
	  if (start
	      && ! FUNC13 (ce_info, start, end, false_expr,
					    false_prob_val, FALSE))
	    goto fail;

	  /* If the conditional jump is more than just a conditional jump, then
	     we can not do conditional execution conversion on this block.  */
	  if (! FUNC23 (FUNC0 (bb)))
	    goto fail;

	  /* Find the conditional jump and isolate the test.  */
	  t = FUNC12 (FUNC0 (bb));
	  if (! t)
	    goto fail;

	  f_code = FUNC24 (t, FUNC0 (bb));
	  if (f_code == UNKNOWN)
	    goto fail;

	  f = FUNC20 (f_code, FUNC2 (t), FUNC8 (t, 0), FUNC8 (t, 1));
	  if (ce_info->and_and_p)
	    {
	      t = FUNC18 (FUNC2 (t), true_expr, t);
	      f = FUNC19 (FUNC2 (t), false_expr, f);
	    }
	  else
	    {
	      t = FUNC19 (FUNC2 (t), true_expr, t);
	      f = FUNC18 (FUNC2 (t), false_expr, f);
	    }

	  /* If the machine description needs to modify the tests, such as
	     setting a conditional execution register from a comparison, it can
	     do so here.  */
#ifdef IFCVT_MODIFY_MULTIPLE_TESTS
	  IFCVT_MODIFY_MULTIPLE_TESTS (ce_info, bb, t, f);

	  /* See if the conversion failed.  */
	  if (!t || !f)
	    goto fail;
#endif

	  true_expr = t;
	  false_expr = f;
	}
      while (bb != last_test_bb);
    }

  /* For IF-THEN-ELSE blocks, we don't allow modifications of the test
     on then THEN block.  */
  then_mod_ok = (else_bb == NULL_BLOCK);

  /* Go through the THEN and ELSE blocks converting the insns if possible
     to conditional execution.  */

  if (then_end
      && (! false_expr
	  || ! FUNC13 (ce_info, then_start, then_end,
					false_expr, false_prob_val,
					then_mod_ok)))
    goto fail;

  if (else_bb && else_end
      && ! FUNC13 (ce_info, else_start, else_end,
				    true_expr, true_prob_val, TRUE))
    goto fail;

  /* If we cannot apply the changes, fail.  Do not go through the normal fail
     processing, since apply_change_group will call cancel_changes.  */
  if (! FUNC9 ())
    {
#ifdef IFCVT_MODIFY_CANCEL
      /* Cancel any machine dependent changes.  */
      IFCVT_MODIFY_CANCEL (ce_info);
#endif
      return FALSE;
    }

#ifdef IFCVT_MODIFY_FINAL
  /* Do any machine dependent final modifications.  */
  IFCVT_MODIFY_FINAL (ce_info);
#endif

  /* Conversion succeeded.  */
  if (dump_file)
    FUNC17 (dump_file, "%d insn%s converted to conditional execution.\n",
	     n_insns, (n_insns == 1) ? " was" : "s were");

  /* Merge the blocks!  */
  FUNC22 (ce_info);
  cond_exec_changed_p = TRUE;
  return TRUE;

 fail:
#ifdef IFCVT_MODIFY_CANCEL
  /* Cancel any machine dependent changes.  */
  IFCVT_MODIFY_CANCEL (ce_info);
#endif

  FUNC11 (0);
  return FALSE;
}