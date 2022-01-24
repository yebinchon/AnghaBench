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
 int /*<<< orphan*/  CLEANUP_POINT_EXPR ; 
 scalar_t__ RETURN_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

tree
FUNC4 (tree type, tree expr)
{
  /* If the expression does not have side effects then we don't have to wrap
     it with a cleanup point expression.  */
  if (!FUNC2 (expr))
    return expr;

  /* If the expression is a return, check to see if the expression inside the
     return has no side effects or the right hand side of the modify expression
     inside the return. If either don't have side effects set we don't need to
     wrap the expression in a cleanup point expression.  Note we don't check the
     left hand side of the modify because it should always be a return decl.  */
  if (FUNC0 (expr) == RETURN_EXPR)
    {
      tree op = FUNC1 (expr, 0);
      if (!op || !FUNC2 (op))
        return expr;
      op = FUNC1 (op, 1);
      if (!FUNC2 (op))
        return expr;
    }
  
  return FUNC3 (CLEANUP_POINT_EXPR, type, expr);
}