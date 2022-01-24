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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_DECL ; 
 scalar_t__ EXC_PTR_EXPR ; 
 scalar_t__ FILTER_EXPR ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ LABEL_DECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC4 (tree t)
{
  if ((FUNC2 (t) == EXC_PTR_EXPR) || (FUNC2 (t) == FILTER_EXPR))
    return t;

  while (!FUNC1 (t) 
	 && (!FUNC0 (t))
	 && FUNC2 (t) != LABEL_DECL
	 && FUNC2 (t) != FUNCTION_DECL
	 && FUNC2 (t) != CONST_DECL)
    {
      t = FUNC3 (t, 0);
    }
  return t;
}