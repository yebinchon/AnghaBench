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
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_unused_value ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC8 (tree expr1, tree expr2)
{
  if (!FUNC2 (expr1))
    {
      /* The left-hand operand of a comma expression is like an expression
	 statement: with -Wextra or -Wunused, we should warn if it doesn't have
	 any side-effects, unless it was explicitly cast to (void).  */
      if (warn_unused_value)
	{
	  if (FUNC4 (FUNC3 (expr1))
	      && (FUNC0 (expr1) == NOP_EXPR
		  || FUNC0 (expr1) == CONVERT_EXPR))
	    ; /* (void) a, b */
	  else if (FUNC4 (FUNC3 (expr1))
		   && FUNC0 (expr1) == COMPOUND_EXPR
		   && (FUNC0 (FUNC1 (expr1, 1)) == CONVERT_EXPR
		       || FUNC0 (FUNC1 (expr1, 1)) == NOP_EXPR))
	    ; /* (void) a, (void) b, c */
	  else
	    FUNC7 (0, "left-hand operand of comma expression has no effect");
	}
    }

  /* With -Wunused, we should also warn if the left-hand operand does have
     side-effects, but computes a value which is not used.  For example, in
     `foo() + bar(), baz()' the result of the `+' operator is not used,
     so we should issue a warning.  */
  else if (warn_unused_value)
    FUNC6 (expr1, input_location);

  if (expr2 == error_mark_node)
    return error_mark_node;

  return FUNC5 (COMPOUND_EXPR, FUNC3 (expr2), expr1, expr2);
}