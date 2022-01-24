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
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  cur_stmt_list ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ extra_warnings ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ warn_sequence_point ; 
 scalar_t__ warn_unused_value ; 

tree
FUNC12 (tree expr)
{
  if (!expr)
    return NULL_TREE;

  if (warn_sequence_point)
    FUNC11 (expr);

  if (FUNC7 (expr) != error_mark_node
      && !FUNC0 (FUNC7 (expr))
      && FUNC6 (FUNC7 (expr)) != ARRAY_TYPE)
    FUNC10 ("expression statement has incomplete type");

  /* If we're not processing a statement expression, warn about unused values.
     Warnings for statement expressions will be emitted later, once we figure
     out which is the result.  */
  if (!FUNC5 (cur_stmt_list)
      && (extra_warnings || warn_unused_value))
    FUNC9 (expr);

  /* If the expression is not of a type to which we cannot assign a line
     number, wrap the thing in a no-op NOP_EXPR.  */
  if (FUNC2 (expr) || FUNC1 (expr))
    expr = FUNC8 (NOP_EXPR, FUNC7 (expr), expr);

  if (FUNC3 (expr))
    FUNC4 (expr, input_location);

  return expr;
}