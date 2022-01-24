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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ REAL_CST ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst0 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC14 (tree fndecl, tree arglist)
{
  tree type = FUNC5 (FUNC5 (fndecl));
  tree arg, temp;

  if (!FUNC13 (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  arg = FUNC6 (arglist);

  /* If ARG is a compile-time constant, determine the result.  */
  if (FUNC2 (arg) == REAL_CST
      && !FUNC3 (arg))
    {
      REAL_VALUE_TYPE c;

      c = FUNC4 (arg);
      temp = FUNC1 (c) ? integer_one_node : integer_zero_node;
      return FUNC10 (type, temp);
    }

  /* If ARG is non-negative, the result is always zero.  */
  if (FUNC12 (arg))
    return FUNC11 (type, integer_zero_node, arg);

  /* If ARG's format doesn't have signed zeros, return "arg < 0.0".  */
  if (!FUNC0 (FUNC7 (FUNC5 (arg))))
    return FUNC9 (LT_EXPR, type, arg,
			FUNC8 (FUNC5 (arg), dconst0));

  return NULL_TREE;
}