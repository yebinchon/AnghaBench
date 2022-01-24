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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_UNQUALIFIED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree expr)
{
  /* This should really operate on c_expr structures, but they aren't
     yet available everywhere required.  */
  tree type = FUNC3 (expr);
  return (FUNC1 (expr) == INTEGER_CST
	  && !FUNC2 (expr)
	  && FUNC6 (expr)
	  && (FUNC0 (type)
	      || (FUNC1 (type) == POINTER_TYPE
		  && FUNC5 (FUNC3 (type))
		  && FUNC4 (FUNC3 (type)) == TYPE_UNQUALIFIED)));
}