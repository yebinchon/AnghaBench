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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (tree arglist)
{
  tree arg, inner;

  if (arglist == 0)
    return 0;

  arg = FUNC6 (arglist);

  /* If the argument isn't invariant, then there's nothing we can do.  */
  if (!FUNC4 (arg))
    return 0;

  /* If we're looking at an address of a weak decl, then do not fold.  */
  inner = arg;
  FUNC2 (inner);
  if (FUNC3 (inner) == ADDR_EXPR)
    {
      do
	{
	  inner = FUNC5 (inner, 0);
	}
      while (FUNC3 (inner) == COMPONENT_REF
	     || FUNC3 (inner) == ARRAY_REF);
      if (FUNC0 (inner) && FUNC1 (inner))
	return 0;
    }

  /* Otherwise, ARG already has the proper type for the return value.  */
  return arg;
}