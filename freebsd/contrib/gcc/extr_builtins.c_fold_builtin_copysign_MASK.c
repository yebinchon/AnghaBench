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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ REAL_CST ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC16 (tree fndecl, tree arglist, tree type)
{
  tree arg1, arg2, tem;

  if (!FUNC15 (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  arg1 = FUNC4 (arglist);
  arg2 = FUNC4 (FUNC0 (arglist));

  /* copysign(X,X) is X.  */
  if (FUNC11 (arg1, arg2, 0))
    return FUNC8 (type, arg1);

  /* If ARG1 and ARG2 are compile-time constants, determine the result.  */
  if (FUNC1 (arg1) == REAL_CST
      && FUNC1 (arg2) == REAL_CST
      && !FUNC2 (arg1)
      && !FUNC2 (arg2))
    {
      REAL_VALUE_TYPE c1, c2;

      c1 = FUNC3 (arg1);
      c2 = FUNC3 (arg2);
      /* c1.sign := c2.sign.  */
      FUNC12 (&c1, &c2);
      return FUNC6 (type, c1);
    }

  /* copysign(X, Y) is fabs(X) when Y is always non-negative.
     Remember to evaluate Y for side-effects.  */
  if (FUNC14 (arg2))
    return FUNC10 (type,
			     FUNC7 (ABS_EXPR, type, arg1),
			     arg2);

  /* Strip sign changing operations for the first argument.  */
  tem = FUNC9 (arg1);
  if (tem)
    {
      arglist = FUNC13 (NULL_TREE, tem, FUNC0 (arglist));
      return FUNC5 (fndecl, arglist);
    }

  return NULL_TREE;
}