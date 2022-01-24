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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ WITH_SIZE_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (tree *expr_p)
{
  tree expr = *expr_p;
  tree type = FUNC2 (expr);
  tree size;

  /* If we've already wrapped this or the type is error_mark_node, we can't do
     anything.  */
  if (FUNC1 (expr) == WITH_SIZE_EXPR
      || type == error_mark_node)
    return;

  /* If the size isn't known or is a constant, we have nothing to do.  */
  size = FUNC3 (type);
  if (!size || FUNC1 (size) == INTEGER_CST)
    return;

  /* Otherwise, make a WITH_SIZE_EXPR.  */
  size = FUNC5 (size);
  size = FUNC0 (size, expr);
  *expr_p = FUNC4 (WITH_SIZE_EXPR, type, expr, size);
}