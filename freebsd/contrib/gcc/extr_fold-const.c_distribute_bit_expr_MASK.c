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
 scalar_t__ BIT_AND_EXPR ; 
 scalar_t__ BIT_IOR_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC4 (enum tree_code code, tree type, tree arg0, tree arg1)
{
  tree common;
  tree left, right;

  if (FUNC0 (arg0) != FUNC0 (arg1)
      || FUNC0 (arg0) == code
      || (FUNC0 (arg0) != BIT_AND_EXPR
	  && FUNC0 (arg0) != BIT_IOR_EXPR))
    return 0;

  if (FUNC3 (FUNC1 (arg0, 0), FUNC1 (arg1, 0), 0))
    {
      common = FUNC1 (arg0, 0);
      left = FUNC1 (arg0, 1);
      right = FUNC1 (arg1, 1);
    }
  else if (FUNC3 (FUNC1 (arg0, 0), FUNC1 (arg1, 1), 0))
    {
      common = FUNC1 (arg0, 0);
      left = FUNC1 (arg0, 1);
      right = FUNC1 (arg1, 0);
    }
  else if (FUNC3 (FUNC1 (arg0, 1), FUNC1 (arg1, 0), 0))
    {
      common = FUNC1 (arg0, 1);
      left = FUNC1 (arg0, 0);
      right = FUNC1 (arg1, 1);
    }
  else if (FUNC3 (FUNC1 (arg0, 1), FUNC1 (arg1, 1), 0))
    {
      common = FUNC1 (arg0, 1);
      left = FUNC1 (arg0, 0);
      right = FUNC1 (arg1, 0);
    }
  else
    return 0;

  return FUNC2 (FUNC0 (arg0), type, common,
		      FUNC2 (code, type, left, right));
}