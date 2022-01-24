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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ INTEGER_TYPE ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fb_rvalue ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  is_gimple_val ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

void
FUNC15 (tree *expr_p, tree *stmt_p)
{
  tree type, expr = *expr_p;

  /* We don't do anything if the value isn't there, is constant, or contains
     A PLACEHOLDER_EXPR.  We also don't want to do anything if it's already
     a VAR_DECL.  If it's a VAR_DECL from another function, the gimplifier
     will want to replace it with a new variable, but that will cause problems
     if this type is from outside the function.  It's OK to have that here.  */
  if (expr == NULL_TREE || FUNC6 (expr)
      || FUNC5 (expr) == VAR_DECL
      || FUNC0 (expr))
    return;

  type = FUNC7 (expr);
  *expr_p = FUNC14 (expr);

  FUNC13 (expr_p, stmt_p, NULL, is_gimple_val, fb_rvalue);
  expr = *expr_p;

  /* Verify that we've an exact type match with the original expression.
     In particular, we do not wish to drop a "sizetype" in favour of a
     type of similar dimensions.  We don't want to pollute the generic
     type-stripping code with this knowledge because it doesn't matter
     for the bulk of GENERIC/GIMPLE.  It only matters that TYPE_SIZE_UNIT
     and friends retain their "sizetype-ness".  */
  if (FUNC7 (expr) != type
      && FUNC5 (type) == INTEGER_TYPE
      && FUNC8 (type))
    {
      tree tmp;

      *expr_p = FUNC11 (type, NULL);
      tmp = FUNC9 (NOP_EXPR, type, expr);
      tmp = FUNC10 (MODIFY_EXPR, type, *expr_p, tmp);
      if (FUNC1 (expr))
	FUNC4 (tmp, FUNC2 (expr));
      else
	FUNC3 (tmp, input_location);

      FUNC12 (tmp, stmt_p);
    }
}