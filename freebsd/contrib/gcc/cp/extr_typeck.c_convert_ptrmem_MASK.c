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
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ PTRMEM_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 

tree
FUNC11 (tree type, tree expr, bool allow_inverse_p,
		bool c_cast_p)
{
  if (FUNC4 (type))
    {
      tree delta;

      if (FUNC0 (expr) == PTRMEM_CST)
	expr = FUNC8 (expr);
      delta = FUNC9 (FUNC3 (FUNC1 (expr)),
				    FUNC3 (type),
				    allow_inverse_p,
				    c_cast_p);
      if (!FUNC10 (delta))
	expr = FUNC7 (PLUS_EXPR,
				   FUNC5 (ptrdiff_type_node, expr),
				   delta);
      return FUNC5 (type, expr);
    }
  else
    return FUNC6 (FUNC2 (type), expr,
			     allow_inverse_p, c_cast_p);
}