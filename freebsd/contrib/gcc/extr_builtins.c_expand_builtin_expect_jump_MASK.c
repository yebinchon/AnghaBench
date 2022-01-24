#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  PRED_BUILTIN_EXPECT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ pc_rtx ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 () ; 

rtx
FUNC25 (tree exp, rtx if_false_label, rtx if_true_label)
{
  tree arglist = FUNC8 (exp, 1);
  tree arg0 = FUNC10 (arglist);
  tree arg1 = FUNC10 (FUNC6 (arglist));
  rtx ret = NULL_RTX;

  /* Only handle __builtin_expect (test, 0) and
     __builtin_expect (test, 1).  */
  if (FUNC7 (FUNC9 (arg1)) == INTEGER_TYPE
      && (FUNC19 (arg1) || FUNC18 (arg1)))
    {
      rtx insn, drop_through_label, temp;

      /* Expand the jump insns.  */
      FUNC24 ();
      FUNC14 (arg0, if_false_label, if_true_label);
      ret = FUNC16 ();

      drop_through_label = FUNC17 ();
      if (drop_through_label && FUNC4 (drop_through_label))
	drop_through_label = FUNC23 (drop_through_label);
      if (drop_through_label && !FUNC2 (drop_through_label))
	drop_through_label = NULL_RTX;
      FUNC15 ();

      if (! if_true_label)
	if_true_label = drop_through_label;
      if (! if_false_label)
	if_false_label = drop_through_label;

      /* Go through and add the expect's to each of the conditional jumps.  */
      insn = ret;
      while (insn != NULL_RTX)
	{
	  rtx next = FUNC3 (insn);

	  if (FUNC1 (insn) && FUNC12 (insn))
	    {
	      rtx ifelse = FUNC5 (FUNC21 (insn));
	      rtx then_dest = FUNC11 (ifelse, 1);
	      rtx else_dest = FUNC11 (ifelse, 2);
	      int taken = -1;

	      /* First check if we recognize any of the labels.  */
	      if (FUNC0 (then_dest) == LABEL_REF
		  && FUNC11 (then_dest, 0) == if_true_label)
		taken = 1;
	      else if (FUNC0 (then_dest) == LABEL_REF
		       && FUNC11 (then_dest, 0) == if_false_label)
		taken = 0;
	      else if (FUNC0 (else_dest) == LABEL_REF
		       && FUNC11 (else_dest, 0) == if_false_label)
		taken = 1;
	      else if (FUNC0 (else_dest) == LABEL_REF
		       && FUNC11 (else_dest, 0) == if_true_label)
		taken = 0;
	      /* Otherwise check where we drop through.  */
	      else if (else_dest == pc_rtx)
		{
		  if (next && FUNC4 (next))
		    next = FUNC20 (next);

		  if (next && FUNC1 (next)
		      && FUNC13 (next))
		    temp = FUNC11 (FUNC5 (FUNC21 (next)), 0);
		  else
		    temp = next;

		  /* TEMP is either a CODE_LABEL, NULL_RTX or something
		     else that can't possibly match either target label.  */
		  if (temp == if_false_label)
		    taken = 1;
		  else if (temp == if_true_label)
		    taken = 0;
		}
	      else if (then_dest == pc_rtx)
		{
		  if (next && FUNC4 (next))
		    next = FUNC20 (next);

		  if (next && FUNC1 (next)
		      && FUNC13 (next))
		    temp = FUNC11 (FUNC5 (FUNC21 (next)), 0);
		  else
		    temp = next;

		  if (temp == if_false_label)
		    taken = 0;
		  else if (temp == if_true_label)
		    taken = 1;
		}

	      if (taken != -1)
		{
		  /* If the test is expected to fail, reverse the
		     probabilities.  */
		  if (FUNC19 (arg1))
		    taken = 1 - taken;
		  FUNC22 (insn, PRED_BUILTIN_EXPECT, taken);
		}
	    }

	  insn = next;
	}
    }

  return ret;
}