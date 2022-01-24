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
 scalar_t__ NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 

tree
FUNC10 (tree type, tree chrec)
{
  tree inner_type, left, right, lc, rc;

  if (FUNC6 (chrec)
      || FUNC3 (chrec) != POLYNOMIAL_CHREC)
    return NULL_TREE;

  inner_type = FUNC4 (chrec);
  if (FUNC5 (type) > FUNC5 (inner_type))
    return NULL_TREE;

  /* If we cannot perform arithmetic in TYPE, avoid creating an scev.  */
  if (FUNC7 (type))
    return NULL_TREE;

  left = FUNC0 (chrec);
  right = FUNC1 (chrec);
  lc = FUNC10 (type, left);
  if (!lc)
    lc = FUNC9 (type, left, NULL_TREE);
  rc = FUNC10 (type, right);
  if (!rc)
    rc = FUNC9 (type, right, NULL_TREE);
 
  return FUNC8 (FUNC2 (chrec), lc, rc);
}