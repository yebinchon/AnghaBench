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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  LE_EXPR ; 
 scalar_t__ MAX_EXPR ; 
 scalar_t__ MIN_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static tree
FUNC7 (enum tree_code code, tree t)
{
  /* For MIN_EXPR or MAX_EXPR, fold-const.c has arranged things so that
     the first operand is always the one to be used if both operands
     are equal, so we know what conditional expression this used to be.  */
  if (FUNC0 (t) == MIN_EXPR || FUNC0 (t) == MAX_EXPR)
    {
      tree op0 = FUNC1 (t, 0);
      tree op1 = FUNC1 (t, 1);

      /* The following code is incorrect if either operand side-effects.  */
      FUNC6 (!FUNC2 (op0)
		  && !FUNC2 (op1));
      return
	FUNC3 (FUNC5 ((FUNC0 (t) == MIN_EXPR
						    ? LE_EXPR : GE_EXPR),
						   op0, FUNC0 (op0),
						   op1, FUNC0 (op1),
						   /*overloaded_p=*/NULL),
			    FUNC4 (code, op0, 0),
			    FUNC4 (code, op1, 0));
    }

  return
    FUNC3 (FUNC1 (t, 0),
			    FUNC4 (code, FUNC1 (t, 1), 0),
			    FUNC4 (code, FUNC1 (t, 2), 0));
}