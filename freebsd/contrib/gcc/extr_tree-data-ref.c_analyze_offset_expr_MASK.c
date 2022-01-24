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
struct loop {int /*<<< orphan*/  num; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INTEGER_CST ; 
#define  MINUS_EXPR 130 
 int MIN_EXPR ; 
#define  MULT_EXPR 129 
 scalar_t__ NULL_TREE ; 
#define  PLUS_EXPR 128 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct loop*,scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int const,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssizetype ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC18 (tree expr, 
		     struct loop *loop, 
		     tree *initial_offset,
		     tree *misalign,
		     tree *aligned_to,
		     tree *step)
{
  tree oprnd0;
  tree oprnd1;
  tree left_offset = FUNC16 (0);
  tree right_offset = FUNC16 (0);
  tree left_misalign = FUNC16 (0);
  tree right_misalign = FUNC16 (0);
  tree left_step = FUNC16 (0);
  tree right_step = FUNC16 (0);
  enum tree_code code;
  tree init, evolution;
  tree left_aligned_to = NULL_TREE, right_aligned_to = NULL_TREE;

  *step = NULL_TREE;
  *misalign = NULL_TREE;
  *aligned_to = NULL_TREE;  
  *initial_offset = NULL_TREE;

  /* Strip conversions that don't narrow the mode.  */
  expr = FUNC17 (expr);
  if (!expr)
    return false;

  /* Stop conditions:
     1. Constant.  */
  if (FUNC2 (expr) == INTEGER_CST)
    {
      *initial_offset = FUNC9 (ssizetype, expr);
      *misalign = FUNC9 (ssizetype, expr);      
      *step = FUNC16 (0);
      return true;
    }

  /* 2. Variable. Try to substitute with initial_condition of the corresponding
     access_fn in the current loop.  */
  if (FUNC1 (expr))
    {
      tree access_fn = FUNC5 (loop, expr);

      if (access_fn == chrec_dont_know)
	/* No access_fn.  */
	return false;

      init = FUNC13 (access_fn, loop->num);
      if (!FUNC7 (loop, init))
	/* Not enough information: may be not loop invariant.  
	   E.g., for a[b[i]], we get a[D], where D=b[i]. EXPR is D, its 
	   initial_condition is D, but it depends on i - loop's induction
	   variable.  */	  
	return false;

      evolution = FUNC6 (access_fn, loop->num);
      if (evolution && FUNC2 (evolution) != INTEGER_CST)
	/* Evolution is not constant.  */
	return false;

      if (FUNC2 (init) == INTEGER_CST)
	*misalign = FUNC9 (ssizetype, init);
      else
	/* Not constant, misalignment cannot be calculated.  */
	*misalign = NULL_TREE;

      *initial_offset = FUNC9 (ssizetype, init); 

      *step = evolution ? FUNC9 (ssizetype, evolution) : FUNC16 (0);
      return true;      
    }

  /* Recursive computation.  */
  if (!FUNC0 (expr))
    {
      /* We expect to get binary expressions (PLUS/MINUS and MULT).  */
      if (dump_file && (dump_flags & TDF_DETAILS))
        {
	  FUNC10 (dump_file, "\nNot binary expression ");
          FUNC14 (dump_file, expr, TDF_SLIM);
	  FUNC10 (dump_file, "\n");
	}
      return false;
    }
  oprnd0 = FUNC3 (expr, 0);
  oprnd1 = FUNC3 (expr, 1);

  if (!FUNC18 (oprnd0, loop, &left_offset, &left_misalign, 
			    &left_aligned_to, &left_step)
      || !FUNC18 (oprnd1, loop, &right_offset, &right_misalign, 
			       &right_aligned_to, &right_step))
    return false;

  /* The type of the operation: plus, minus or mult.  */
  code = FUNC2 (expr);
  switch (code)
    {
    case MULT_EXPR:
      if (FUNC2 (right_offset) != INTEGER_CST)
	/* RIGHT_OFFSET can be not constant. For example, for arrays of variable 
	   sized types. 
	   FORNOW: We don't support such cases.  */
	return false;

      /* Strip conversions that don't narrow the mode.  */
      left_offset = FUNC17 (left_offset);      
      if (!left_offset)
	return false;      
      /* Misalignment computation.  */
      if (FUNC1 (left_offset))
	{
	  /* If the left side contains variables that can't be substituted with 
	     constants, the misalignment is unknown. However, if the right side 
	     is a multiple of some alignment, we know that the expression is
	     aligned to it. Therefore, we record such maximum possible value.
	   */
	  *misalign = NULL_TREE;
	  *aligned_to = FUNC16 (FUNC12 (right_offset));
	}
      else 
	{
	  /* The left operand was successfully substituted with constant.  */	  
	  if (left_misalign)
	    {
	      /* In case of EXPR '(i * C1 + j) * C2', LEFT_MISALIGN is 
		 NULL_TREE.  */
	      *misalign  = FUNC15 (code, left_misalign, right_misalign);
	      if (left_aligned_to && right_aligned_to)
		*aligned_to = FUNC15 (MIN_EXPR, left_aligned_to, 
					  right_aligned_to);
	      else 
		*aligned_to = left_aligned_to ? 
		  left_aligned_to : right_aligned_to;
	    }
	  else
	    *misalign = NULL_TREE; 
	}

      /* Step calculation.  */
      /* Multiply the step by the right operand.  */
      *step  = FUNC15 (MULT_EXPR, left_step, right_offset);
      break;
   
    case PLUS_EXPR:
    case MINUS_EXPR:
      /* Combine the recursive calculations for step and misalignment.  */
      *step = FUNC15 (code, left_step, right_step);

      /* Unknown alignment.  */
      if ((!left_misalign && !left_aligned_to)
	  || (!right_misalign && !right_aligned_to))
	{
	  *misalign = NULL_TREE;
	  *aligned_to = NULL_TREE;
	  break;
	}

      if (left_misalign && right_misalign)
	*misalign = FUNC15 (code, left_misalign, right_misalign);
      else
	*misalign = left_misalign ? left_misalign : right_misalign;

      if (left_aligned_to && right_aligned_to)
	*aligned_to = FUNC15 (MIN_EXPR, left_aligned_to, right_aligned_to);
      else 
	*aligned_to = left_aligned_to ? left_aligned_to : right_aligned_to;

      break;

    default:
      FUNC11 ();
    }

  /* Compute offset.  */
  *initial_offset = FUNC9 (ssizetype, 
				  FUNC8 (code, FUNC4 (left_offset), 
					       left_offset, 
					       right_offset));
  return true;
}