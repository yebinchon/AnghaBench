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
#define  INTEGER_TYPE 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  VIEW_CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree type, tree expr)
{
  switch (FUNC0 (FUNC1 (expr)))
    {
    case INTEGER_TYPE:
    case VECTOR_TYPE:
      if (!FUNC5 (FUNC2 (type), FUNC2 (FUNC1 (expr))))
	{
	  FUNC4 ("can't convert between vector values of different size");
	  return error_mark_node;
	}
      return FUNC3 (VIEW_CONVERT_EXPR, type, expr);

    default:
      FUNC4 ("can't convert value to a vector");
      return error_mark_node;
    }
}