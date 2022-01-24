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
typedef  scalar_t__ TREE_SIDE_EFFECTS ;

/* Variables and functions */
 int /*<<< orphan*/  DYNAMIC_CAST_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ processing_template_decl ; 

tree
FUNC3 (tree type, tree expr)
{
  if (type == error_mark_node || expr == error_mark_node)
    return error_mark_node;

  if (processing_template_decl)
    {
      expr = FUNC1 (DYNAMIC_CAST_EXPR, type, expr);
      TREE_SIDE_EFFECTS (expr) = 1;

      return expr;
    }

  return FUNC2 (FUNC0 (type, expr));
}