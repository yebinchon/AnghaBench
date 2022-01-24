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
 scalar_t__ ARRAY_REF ; 
 scalar_t__ EXC_PTR_EXPR ; 
 scalar_t__ FILTER_EXPR ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ IMAGPART_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REALPART_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (tree t)
{
  if ((FUNC2 (t) == EXC_PTR_EXPR) || (FUNC2 (t) == FILTER_EXPR))
    return;

  while (FUNC2 (t) == REALPART_EXPR 
	 || FUNC2 (t) == IMAGPART_EXPR
	 || FUNC5 (t))
    {
      if (FUNC2 (t) == ARRAY_REF)
	FUNC4 (FUNC3 (t, 1));
      t = FUNC3 (t, 0);
    }

  if (FUNC0 (t))
/*  || TREE_CODE (t) == MEM_REF) */
    FUNC6 (FUNC3 (t, 0));

  if (FUNC1 (t) || (FUNC2 (t) == FUNCTION_DECL))
    FUNC4 (t);
}