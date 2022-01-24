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
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VA_ARG_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  null_node ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

tree
FUNC12 (tree expr, tree type)
{
  if (processing_template_decl)
    return FUNC3 (VA_ARG_EXPR, type, expr);

  type = FUNC7 (type, NULL_TREE);

  if (expr == error_mark_node || !type)
    return error_mark_node;

  if (! FUNC10 (type))
    {
      /* Remove reference types so we don't ICE later on.  */
      tree type1 = FUNC9 (type);
      /* Undefined behavior [expr.call] 5.2.2/7.  */
      FUNC11 (0, "cannot receive objects of non-POD type %q#T through %<...%>; "
	       "call will abort at runtime", type);
      expr = FUNC8 (FUNC4 (type1), null_node);
      expr = FUNC1 (COMPOUND_EXPR, FUNC0 (expr),
		     FUNC6 (), expr);
      expr = FUNC2 (expr, NULL);
      return expr;
    }

  return FUNC5 (expr, type);
}