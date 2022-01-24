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
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ SAVE_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VIEW_CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (tree ref)
{
  tree inner = FUNC2 (ref, 0);

  if (FUNC1 (inner) == COMPONENT_REF)
    inner = FUNC5 (inner);
  else
    {
      /* Now remove any conversions: they don't change what the underlying
	 object is.  Likewise for SAVE_EXPR.  */
      while (FUNC1 (inner) == NOP_EXPR || FUNC1 (inner) == CONVERT_EXPR
	     || FUNC1 (inner) == NON_LVALUE_EXPR
	     || FUNC1 (inner) == VIEW_CONVERT_EXPR
	     || FUNC1 (inner) == SAVE_EXPR)
	inner = FUNC2 (inner, 0);

      if (! FUNC0 (inner))
	inner = NULL_TREE;
    }

  if (inner == FUNC2 (ref, 0))
    return ref;
  else
    return FUNC4 (COMPONENT_REF, FUNC3 (ref), inner,
		   FUNC2 (ref, 1), NULL_TREE);
}