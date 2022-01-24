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
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;

/* Variables and functions */
 int BUILT_IN_VAL_COMPARE_AND_SWAP_N ; 
 scalar_t__ CODE_FOR_nothing ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 int GS_ALL_DONE ; 
 int GS_ERROR ; 
 int GS_UNHANDLED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  VIEW_CONVERT_EXPR ; 
 scalar_t__ boolean_type_node ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__* built_in_decls ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC15 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__* sync_compare_and_swap ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static enum gimplify_status
FUNC17 (tree *expr_p, tree *pre_p, tree addr,
			      tree rhs, int index)
{
  tree oldval, oldival, oldival2, newval, newival, label;
  tree type, itype, cmpxchg, args, x, iaddr;

  cmpxchg = built_in_decls[BUILT_IN_VAL_COMPARE_AND_SWAP_N + index + 1];
  type = FUNC3 (FUNC2 (FUNC2 (addr)));
  itype = FUNC2 (FUNC2 (cmpxchg));

  if (sync_compare_and_swap[FUNC4 (itype)] == CODE_FOR_nothing)
    return GS_UNHANDLED;

  oldval = FUNC12 (type, NULL);
  newval = FUNC12 (type, NULL);

  /* Precompute as much of RHS as possible.  In the same walk, replace
     occurrences of the lhs value with our temporary.  */
  if (FUNC15 (&rhs, pre_p, addr, oldval) < 0)
    return GS_ERROR;

  x = FUNC8 (addr);
  x = FUNC6 (MODIFY_EXPR, void_type_node, oldval, x);
  FUNC14 (x, pre_p);

  /* For floating-point values, we'll need to view-convert them to integers
     so that we can perform the atomic compare and swap.  Simplify the 
     following code by always setting up the "i"ntegral variables.  */
  if (FUNC0 (type) || FUNC1 (type))
    {
      oldival = oldval;
      newival = newval;
      iaddr = addr;
    }
  else
    {
      oldival = FUNC12 (itype, NULL);
      newival = FUNC12 (itype, NULL);

      x = FUNC5 (VIEW_CONVERT_EXPR, itype, oldval);
      x = FUNC6 (MODIFY_EXPR, void_type_node, oldival, x);
      FUNC14 (x, pre_p);
      iaddr = FUNC13 (FUNC10 (itype), addr);
    }

  oldival2 = FUNC12 (itype, NULL);

  label = FUNC11 ();
  x = FUNC5 (LABEL_EXPR, void_type_node, label);
  FUNC14 (x, pre_p);

  x = FUNC6 (MODIFY_EXPR, void_type_node, newval, rhs);
  FUNC14 (x, pre_p);

  if (newval != newival)
    {
      x = FUNC5 (VIEW_CONVERT_EXPR, itype, newval);
      x = FUNC6 (MODIFY_EXPR, void_type_node, newival, x);
      FUNC14 (x, pre_p);
    }

  x = FUNC6 (MODIFY_EXPR, void_type_node, oldival2,
	      FUNC13 (itype, oldival));
  FUNC14 (x, pre_p);

  args = FUNC16 (NULL, FUNC13 (itype, newival), NULL);
  args = FUNC16 (NULL, FUNC13 (itype, oldival), args);
  args = FUNC16 (NULL, iaddr, args);
  x = FUNC9 (cmpxchg, args);
  if (oldval == oldival)
    x = FUNC13 (type, x);
  x = FUNC6 (MODIFY_EXPR, void_type_node, oldival, x);
  FUNC14 (x, pre_p);

  /* For floating point, be prepared for the loop backedge.  */
  if (oldval != oldival)
    {
      x = FUNC5 (VIEW_CONVERT_EXPR, type, oldival);
      x = FUNC6 (MODIFY_EXPR, void_type_node, oldval, x);
      FUNC14 (x, pre_p);
    }

  /* Note that we always perform the comparison as an integer, even for
     floating point.  This allows the atomic operation to properly 
     succeed even with NaNs and -0.0.  */
  x = FUNC7 (COND_EXPR, void_type_node,
	      FUNC6 (NE_EXPR, boolean_type_node, oldival, oldival2),
	      FUNC5 (GOTO_EXPR, void_type_node, label), NULL);
  FUNC14 (x, pre_p);

  *expr_p = NULL;
  return GS_ALL_DONE;
}