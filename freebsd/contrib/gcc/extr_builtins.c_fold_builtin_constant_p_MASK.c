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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ STRING_CST ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ cfun ; 
 scalar_t__ folding_initializer ; 
 scalar_t__ integer_one_node ; 
 scalar_t__ integer_zero_node ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC11 (tree arglist)
{
  if (arglist == 0)
    return 0;

  arglist = FUNC9 (arglist);

  /* We return 1 for a numeric type that's known to be a constant
     value at compile-time or for an aggregate type that's a
     literal constant.  */
  FUNC3 (arglist);

  /* If we know this is a constant, emit the constant of one.  */
  if (FUNC1 (arglist)
      || (FUNC4 (arglist) == CONSTRUCTOR
	  && FUNC5 (arglist)))
    return integer_one_node;
  if (FUNC4 (arglist) == ADDR_EXPR)
    {
       tree op = FUNC6 (arglist, 0);
       if (FUNC4 (op) == STRING_CST
	   || (FUNC4 (op) == ARRAY_REF
	       && FUNC10 (FUNC6 (op, 1))
	       && FUNC4 (FUNC6 (op, 0)) == STRING_CST))
	 return integer_one_node;
    }

  /* If this expression has side effects, show we don't know it to be a
     constant.  Likewise if it's a pointer or aggregate type since in
     those case we only want literals, since those are only optimized
     when generating RTL, not later.
     And finally, if we are compiling an initializer, not code, we
     need to return a definite result now; there's not going to be any
     more optimization done.  */
  if (FUNC7 (arglist)
      || FUNC0 (FUNC8 (arglist))
      || FUNC2 (FUNC8 (arglist))
      || cfun == 0
      || folding_initializer)
    return integer_zero_node;

  return 0;
}