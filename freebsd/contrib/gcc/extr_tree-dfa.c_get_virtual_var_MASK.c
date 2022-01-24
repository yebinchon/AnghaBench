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
 scalar_t__ IMAGPART_EXPR ; 
 scalar_t__ REALPART_EXPR ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

tree
FUNC8 (tree var)
{
  FUNC2 (var);

  if (FUNC3 (var) == SSA_NAME)
    var = FUNC0 (var);

  while (FUNC3 (var) == REALPART_EXPR || FUNC3 (var) == IMAGPART_EXPR
	 || FUNC6 (var))
    var = FUNC4 (var, 0);

  /* Treating GIMPLE registers as virtual variables makes no sense.
     Also complain if we couldn't extract a _DECL out of the original
     expression.  */
  FUNC5 (FUNC1 (var));
  FUNC5 (!FUNC7 (var));

  return var;
}