#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ step; scalar_t__ base; } ;
struct tree_niter_desc {int cmp; int /*<<< orphan*/  may_be_zero; scalar_t__ bound; TYPE_1__ control; } ;
struct loop {int dummy; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int ERROR_MARK ; 
 int GE_EXPR ; 
 int GT_EXPR ; 
 int LE_EXPR ; 
 int LT_EXPR ; 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int TRUTH_AND_EXPR ; 
 scalar_t__ boolean_false_node ; 
 scalar_t__ boolean_true_node ; 
 scalar_t__ boolean_type_node ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct loop*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (struct loop *loop, struct tree_niter_desc *desc,
			   unsigned factor, tree *enter_cond,
			   tree *exit_base, tree *exit_step,
			   enum tree_code *exit_cmp, tree *exit_bound)
{
  tree stmts;
  tree base = desc->control.base;
  tree step = desc->control.step;
  tree bound = desc->bound;
  tree type = FUNC0 (base);
  tree bigstep, delta;
  tree min = FUNC10 (type, type);
  tree max = FUNC13 (type, type);
  enum tree_code cmp = desc->cmp;
  tree cond = boolean_true_node, assum;

  *enter_cond = boolean_false_node;
  *exit_base = NULL_TREE;
  *exit_step = NULL_TREE;
  *exit_cmp = ERROR_MARK;
  *exit_bound = NULL_TREE;
  FUNC5 (cmp != ERROR_MARK);

  /* We only need to be correct when we answer question
     "Do at least FACTOR more iterations remain?" in the unrolled loop.
     Thus, transforming BASE + STEP * i <> BOUND to
     BASE + STEP * i < BOUND is ok.  */
  if (cmp == NE_EXPR)
    {
      if (FUNC11 (step))
	cmp = GT_EXPR;
      else
	cmp = LT_EXPR;
    }
  else if (cmp == LT_EXPR)
    {
      FUNC5 (!FUNC11 (step));
    }
  else if (cmp == GT_EXPR)
    {
      FUNC5 (FUNC11 (step));
    }
  else
    FUNC6 ();

  /* The main body of the loop may be entered iff:

     1) desc->may_be_zero is false.
     2) it is possible to check that there are at least FACTOR iterations
	of the loop, i.e., BOUND - step * FACTOR does not overflow.
     3) # of iterations is at least FACTOR  */

  if (!FUNC14 (desc->may_be_zero))
    cond = FUNC3 (TRUTH_AND_EXPR, boolean_type_node,
			FUNC7 (desc->may_be_zero),
			cond);

  bigstep = FUNC3 (MULT_EXPR, type, step,
			 FUNC2 (type, factor));
  delta = FUNC3 (MINUS_EXPR, type, bigstep, step);
  if (cmp == LT_EXPR)
    assum = FUNC3 (GE_EXPR, boolean_type_node,
			 bound,
			 FUNC3 (PLUS_EXPR, type, min, delta));
  else
    assum = FUNC3 (LE_EXPR, boolean_type_node,
			 bound,
			 FUNC3 (PLUS_EXPR, type, max, delta));
  cond = FUNC3 (TRUTH_AND_EXPR, boolean_type_node, assum, cond);

  bound = FUNC3 (MINUS_EXPR, type, bound, delta);
  assum = FUNC3 (cmp, boolean_type_node, base, bound);
  cond = FUNC3 (TRUTH_AND_EXPR, boolean_type_node, assum, cond);

  cond = FUNC4 (FUNC12 (cond), &stmts, false, NULL_TREE);
  if (stmts)
    FUNC1 (FUNC9 (loop), stmts);
  /* cond now may be a gimple comparison, which would be OK, but also any
     other gimple rhs (say a && b).  In this case we need to force it to
     operand.  */
  if (!FUNC8 (cond))
    {
      cond = FUNC4 (cond, &stmts, true, NULL_TREE);
      if (stmts)
	FUNC1 (FUNC9 (loop), stmts);
    }
  *enter_cond = cond;

  base = FUNC4 (FUNC12 (base), &stmts, true, NULL_TREE);
  if (stmts)
    FUNC1 (FUNC9 (loop), stmts);
  bound = FUNC4 (FUNC12 (bound), &stmts, true, NULL_TREE);
  if (stmts)
    FUNC1 (FUNC9 (loop), stmts);

  *exit_base = base;
  *exit_step = bigstep;
  *exit_cmp = cmp;
  *exit_bound = bound;
}