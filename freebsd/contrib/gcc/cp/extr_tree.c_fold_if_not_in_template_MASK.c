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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNARY_PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ processing_template_decl ; 

tree
FUNC5 (tree expr)
{
  /* In the body of a template, there is never any need to call
     "fold".  We will call fold later when actually instantiating the
     template.  Integral constant expressions in templates will be
     evaluated via fold_non_dependent_expr, as necessary.  */
  if (processing_template_decl)
    return expr;

  /* Fold C++ front-end specific tree codes.  */
  if (FUNC0 (expr) == UNARY_PLUS_EXPR)
    return FUNC4 (FUNC2 (expr), FUNC1 (expr, 0));

  return FUNC3 (expr);
}