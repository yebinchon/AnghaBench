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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC8 (tree type, tree expr)
{
  tree expr_type;

  expr_type = FUNC0 (expr);

  if (FUNC7 (type, expr_type))
    return expr;
  else if (FUNC3 (type) && FUNC3 (expr_type)
	   && FUNC6 (FUNC0 (type), FUNC0 (expr_type)))
    return FUNC5 (type, expr);
  else if (FUNC4 (type)
	   && FUNC4 (expr_type)
	   && FUNC7 (FUNC1 (type),
			   FUNC1 (expr_type))
	   && FUNC6 (FUNC2 (type),
			       FUNC2 (expr_type)))
    return FUNC5 (type, expr);
  else
    return error_mark_node;
}