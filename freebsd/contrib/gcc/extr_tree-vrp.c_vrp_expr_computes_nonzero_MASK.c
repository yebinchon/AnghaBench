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
typedef  int /*<<< orphan*/  value_range_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int*) ; 

__attribute__((used)) static bool
FUNC6 (tree expr, bool *strict_overflow_p)
{
  if (FUNC5 (expr, strict_overflow_p))
    return true;

  /* If we have an expression of the form &X->a, then the expression
     is nonnull if X is nonnull.  */
  if (FUNC0 (expr) == ADDR_EXPR)
    {
      tree base = FUNC2 (FUNC1 (expr, 0));

      if (base != NULL_TREE
	  && FUNC0 (base) == INDIRECT_REF
	  && FUNC0 (FUNC1 (base, 0)) == SSA_NAME)
	{
	  value_range_t *vr = FUNC3 (FUNC1 (base, 0));
	  if (FUNC4 (vr))
	    return true;
	}
    }

  return false;
}