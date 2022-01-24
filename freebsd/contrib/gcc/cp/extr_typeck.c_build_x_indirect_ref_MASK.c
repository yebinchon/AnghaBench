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
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

tree
FUNC6 (tree expr, const char *errorstring)
{
  tree orig_expr = expr;
  tree rval;

  if (processing_template_decl)
    {
      if (FUNC5 (expr))
	return FUNC2 (INDIRECT_REF, expr);
      expr = FUNC4 (expr);
    }

  rval = FUNC3 (INDIRECT_REF, LOOKUP_NORMAL, expr, NULL_TREE,
		       NULL_TREE, /*overloaded_p=*/NULL);
  if (!rval)
    rval = FUNC0 (expr, errorstring);

  if (processing_template_decl && rval != error_mark_node)
    return FUNC1 (INDIRECT_REF, rval, orig_expr);
  else
    return rval;
}