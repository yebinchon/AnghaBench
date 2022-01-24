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
typedef  scalar_t__ tree ;
struct case_node {scalar_t__ low; scalar_t__ high; scalar_t__ code_label; struct case_node* right; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  size_t HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ CASE_USE_BIT_TESTS ; 
 int /*<<< orphan*/  CASE_VECTOR_MODE ; 
 scalar_t__ CASE_VECTOR_PC_RELATIVE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  COMPARE ; 
 scalar_t__ ENUMERAL_TYPE ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  HAVE_casesi ; 
 int /*<<< orphan*/  HAVE_tablejump ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,int) ; 
 int FUNC20 (scalar_t__) ; 
 int FUNC21 (scalar_t__) ; 
 int VOIDmode ; 
 struct case_node* FUNC22 (struct case_node*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct case_node**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC28 () ; 
 scalar_t__ FUNC29 (scalar_t__,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC30 (int,scalar_t__,int) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct case_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__,struct case_node*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC39 (struct case_node*) ; 
 scalar_t__ FUNC40 (scalar_t__) ; 
 int /*<<< orphan*/  flag_jump_tables ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (int) ; 
 scalar_t__ FUNC44 () ; 
 int /*<<< orphan*/  FUNC45 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC49 () ; 
 scalar_t__ FUNC50 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC51 (scalar_t__) ; 
 scalar_t__ FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ optimize_size ; 
 int /*<<< orphan*/  FUNC54 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC55 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC56 (scalar_t__,scalar_t__) ; 
 int FUNC57 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC58 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC59 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int use_cost_table ; 
 int /*<<< orphan*/  word_mode ; 

void
FUNC60 (tree exp)
{
  tree minval = NULL_TREE, maxval = NULL_TREE, range = NULL_TREE;
  rtx default_label = 0;
  struct case_node *n;
  unsigned int count, uniq;
  rtx index;
  rtx table_label;
  int ncases;
  rtx *labelvec;
  int i, fail;
  rtx before_case, end, lab;

  tree vec = FUNC15 (exp);
  tree orig_type = FUNC18 (exp);
  tree index_expr = FUNC14 (exp);
  tree index_type = FUNC18 (index_expr);
  int unsignedp = FUNC21 (index_type);

  /* The insn after which the case dispatch should finally
     be emitted.  Zero for a dummy.  */
  rtx start;

  /* A list of case labels; it is first built as a list and it may then
     be rearranged into a nearly balanced binary tree.  */
  struct case_node *case_list = 0;

  /* Label to jump to if no case matches.  */
  tree default_label_decl;

  /* The switch body is lowered in gimplify.c, we should never have
     switches with a non-NULL SWITCH_BODY here.  */
  FUNC43 (!FUNC13 (exp));
  FUNC43 (FUNC15 (exp));

  FUNC32 ();

  /* An ERROR_MARK occurs for various reasons including invalid data type.  */
  if (index_type != error_mark_node)
    {
      tree elt;
      bitmap label_bitmap;

      /* cleanup_tree_cfg removes all SWITCH_EXPR with their index
	 expressions being INTEGER_CST.  */
      FUNC43 (FUNC16 (index_expr) != INTEGER_CST);

      /* The default case is at the end of TREE_VEC.  */
      elt = FUNC19 (vec, FUNC20 (vec) - 1);
      FUNC43 (!FUNC2 (elt));
      FUNC43 (!FUNC4 (elt));
      default_label_decl = FUNC3 (elt);

      for (i = FUNC20 (vec) - 1; --i >= 0; )
	{
	  tree low, high;
	  elt = FUNC19 (vec, i);

	  low = FUNC4 (elt);
	  FUNC43 (low);
	  high = FUNC2 (elt);

	  /* Discard empty ranges.  */
	  if (high && FUNC10 (high, low))
	    continue;

	  case_list = FUNC22 (case_list, index_type, low, high,
				     FUNC3 (elt));
	}


      before_case = start = FUNC49 ();
      default_label = FUNC51 (default_label_decl);

      /* Get upper and lower bounds of case values.  */

      uniq = 0;
      count = 0;
      label_bitmap = FUNC0 (NULL);
      for (n = case_list; n; n = n->right)
	{
	  /* Count the elements and track the largest and smallest
	     of them (treating them as signed even if they are not).  */
	  if (count++ == 0)
	    {
	      minval = n->low;
	      maxval = n->high;
	    }
	  else
	    {
	      if (FUNC10 (n->low, minval))
		minval = n->low;
	      if (FUNC10 (maxval, n->high))
		maxval = n->high;
	    }
	  /* A range counts double, since it requires two compares.  */
	  if (! FUNC56 (n->low, n->high))
	    count++;

	  /* If we have not seen this label yet, then increase the
	     number of unique case node targets seen.  */
	  lab = FUNC51 (n->code_label);
	  if (!FUNC25 (label_bitmap, FUNC5 (lab)))
	    {
	      FUNC26 (label_bitmap, FUNC5 (lab));
	      uniq++;
	    }
	}

      FUNC1 (label_bitmap);

      /* cleanup_tree_cfg removes all SWITCH_EXPR with a single
	 destination, such as one with a default case only.  However,
	 it doesn't remove cases that are out of range for the switch
	 type, so we may still get a zero here.  */
      if (count == 0)
	{
	  FUNC36 (default_label);
	  return;
	}

      /* Compute span of values.  */
      range = FUNC41 (MINUS_EXPR, index_type, maxval, minval);

      /* Try implementing this switch statement by a short sequence of
	 bit-wise comparisons.  However, we let the binary-tree case
	 below handle constant index expressions.  */
      if (CASE_USE_BIT_TESTS
	  && ! FUNC17 (index_expr)
	  && FUNC29 (range, FUNC7 (word_mode)) < 0
	  && FUNC29 (range, 0) > 0
	  && FUNC52 ()
	  && ((uniq == 1 && count >= 3)
	      || (uniq == 2 && count >= 5)
	      || (uniq == 3 && count >= 6)))
	{
	  /* Optimize the case where all the case values fit in a
	     word without having to subtract MINVAL.  In this case,
	     we can optimize away the subtraction.  */
	  if (FUNC29 (minval, 0) > 0
	      && FUNC29 (maxval, FUNC7 (word_mode)) < 0)
	    {
	      minval = FUNC27 (index_type, 0);
	      range = maxval;
	    }
	  FUNC34 (index_type, index_expr, minval, range,
			       case_list, default_label);
	}

      /* If range of values is much bigger than number of values,
	 make a sequence of conditional branches instead of a dispatch.
	 If the switch-index is a constant, do it this way
	 because we can optimize it.  */

      else if (count < FUNC28 ()
	       || FUNC29 (range,
				    (optimize_size ? 3 : 10) * count) > 0
	       /* RANGE may be signed, and really large ranges will show up
		  as negative numbers.  */
	       || FUNC29 (range, 0) < 0
#ifndef ASM_OUTPUT_ADDR_DIFF_ELT
	       || flag_pic
#endif
	       || !flag_jump_tables
	       || FUNC17 (index_expr)
	       /* If neither casesi or tablejump is available, we can
		  only go this way.  */
	       || (!HAVE_casesi && !HAVE_tablejump))
	{
	  index = FUNC40 (index_expr);

	  /* If the index is a short or char that we do not have
	     an insn to handle comparisons directly, convert it to
	     a full integer now, rather than letting each comparison
	     generate the conversion.  */

	  if (FUNC8 (FUNC6 (index)) == MODE_INT
	      && ! FUNC50 (COMPARE, FUNC6 (index)))
	    {
	      enum machine_mode wider_mode;
	      for (wider_mode = FUNC6 (index); wider_mode != VOIDmode;
		   wider_mode = FUNC9 (wider_mode))
		if (FUNC50 (COMPARE, wider_mode))
		  {
		    index = FUNC30 (wider_mode, index, unsignedp);
		    break;
		  }
	    }

	  FUNC32 ();

	  if (FUNC11 (index))
	    index = FUNC31 (index);

	  /* We generate a binary decision tree to select the
	     appropriate target code.  This is done as follows:

	     The list of cases is rearranged into a binary tree,
	     nearly optimal assuming equal probability for each case.

	     The tree is transformed into RTL, eliminating
	     redundant test conditions at the same time.

	     If program flow could reach the end of the
	     decision tree an unconditional jump to the
	     default code is emitted.  */

	  use_cost_table
	    = (FUNC16 (orig_type) != ENUMERAL_TYPE
	       && FUNC39 (case_list));
	  FUNC24 (&case_list, NULL);
	  FUNC35 (index, case_list, default_label, index_type);
	  FUNC36 (default_label);
	}
      else
	{
	  table_label = FUNC44 ();
	  if (! FUNC58 (index_type, index_expr, minval, range,
			    table_label, default_label))
	    {
	      bool ok;

	      /* Index jumptables from zero for suitable values of
                 minval to avoid a subtraction.  */
	      if (! optimize_size
		  && FUNC29 (minval, 0) > 0
		  && FUNC29 (minval, 3) < 0)
		{
		  minval = FUNC27 (index_type, 0);
		  range = maxval;
		}

	      ok = FUNC59 (index_type, index_expr, minval, range,
				  table_label, default_label);
	      FUNC43 (ok);
	    }

	  /* Get table of labels to jump to, in order of case index.  */

	  ncases = FUNC57 (range, 0) + 1;
	  labelvec = FUNC23 (ncases * sizeof (rtx));
	  FUNC53 (labelvec, 0, ncases * sizeof (rtx));

	  for (n = case_list; n; n = n->right)
	    {
	      /* Compute the low and high bounds relative to the minimum
		 value since that should fit in a HOST_WIDE_INT while the
		 actual values may not.  */
	      HOST_WIDE_INT i_low
		= FUNC57 (FUNC41 (MINUS_EXPR, index_type,
					     n->low, minval), 1);
	      HOST_WIDE_INT i_high
		= FUNC57 (FUNC41 (MINUS_EXPR, index_type,
					     n->high, minval), 1);
	      HOST_WIDE_INT i;

	      for (i = i_low; i <= i_high; i ++)
		labelvec[i]
		  = FUNC48 (Pmode, FUNC51 (n->code_label));
	    }

	  /* Fill in the gaps with the default.  */
	  for (i = 0; i < ncases; i++)
	    if (labelvec[i] == 0)
	      labelvec[i] = FUNC48 (Pmode, default_label);

	  /* Output the table.  */
	  FUNC38 (table_label);

	  if (CASE_VECTOR_PC_RELATIVE || flag_pic)
	    FUNC37 (FUNC46 (CASE_VECTOR_MODE,
						   FUNC48 (Pmode, table_label),
						   FUNC45 (ncases, labelvec),
						   const0_rtx, const0_rtx));
	  else
	    FUNC37 (FUNC47 (CASE_VECTOR_MODE,
					      FUNC45 (ncases, labelvec)));

	  /* Record no drop-through after the table.  */
	  FUNC33 ();
	}

      before_case = FUNC12 (before_case);
      end = FUNC49 ();
      fail = FUNC55 (&before_case, &end);
      FUNC43 (!fail);
      FUNC54 (before_case, end, start);
    }

  FUNC42 ();
}