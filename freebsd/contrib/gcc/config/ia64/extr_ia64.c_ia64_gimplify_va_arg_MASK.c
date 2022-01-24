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

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 scalar_t__ INTEGER_TYPE ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC12 (tree valist, tree type, tree *pre_p, tree *post_p)
{
  /* Variable sized types are passed by reference.  */
  if (FUNC10 (NULL, FUNC3 (type), type, false))
    {
      tree ptrtype = FUNC6 (type);
      tree addr = FUNC11 (valist, ptrtype, pre_p, post_p);
      return FUNC7 (addr);
    }

  /* Aggregate arguments with alignment larger than 8 bytes start at
     the next even boundary.  Integer and floating point arguments
     do so if they are larger than 8 bytes, whether or not they are
     also aligned larger than 8 bytes.  */
  if ((FUNC0 (type) == REAL_TYPE || FUNC0 (type) == INTEGER_TYPE)
      ? FUNC9 (type) > 8 : FUNC2 (type) > 8 * BITS_PER_UNIT)
    {
      tree t = FUNC4 (PLUS_EXPR, FUNC1 (valist), valist,
		       FUNC5 (NULL_TREE, 2 * UNITS_PER_WORD - 1));
      t = FUNC4 (BIT_AND_EXPR, FUNC1 (t), t,
		  FUNC5 (NULL_TREE, -2 * UNITS_PER_WORD));
      t = FUNC4 (MODIFY_EXPR, FUNC1 (valist), valist, t);
      FUNC8 (t, pre_p);
    }

  return FUNC11 (valist, type, pre_p, post_p);
}