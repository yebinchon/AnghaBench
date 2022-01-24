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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NON_LVALUE_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

tree
FUNC8 (tree expr)
{
  tree type;

  if (FUNC6 (expr))
    return expr;

  /* [basic.lval]

     Non-class rvalues always have cv-unqualified types.  */
  type = FUNC1 (expr);
  if (!FUNC0 (type) && FUNC5 (type))
    type = FUNC2 (type);

  if (!processing_template_decl && FUNC7 (expr))
    expr = FUNC3 (NON_LVALUE_EXPR, type, expr);
  else if (type != FUNC1 (expr))
    expr = FUNC4 (type, expr);

  return expr;
}