#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ more_cleanups_ok; struct cp_binding_level* level_chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  cases; int /*<<< orphan*/  level; int /*<<< orphan*/  switch_stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_DECL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct cp_binding_level* current_binding_level ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ sk_function_parms ; 
 TYPE_1__* switch_stack ; 

tree
FUNC9 (tree low_value, tree high_value)
{
  tree cond, r;
  struct cp_binding_level *p;

  if (processing_template_decl)
    {
      tree label;

      /* For templates, just add the case label; we'll do semantic
	 analysis at instantiation-time.  */
      label = FUNC6 (LABEL_DECL, NULL_TREE, NULL_TREE);
      return FUNC4 (FUNC5 (low_value, high_value, label));
    }

  /* Find the condition on which this switch statement depends.  */
  cond = FUNC0 (switch_stack->switch_stmt);
  if (cond && FUNC1 (cond) == TREE_LIST)
    cond = FUNC3 (cond);

  if (!FUNC8 (switch_stack->level))
    return error_mark_node;

  r = FUNC7 (switch_stack->cases, cond, FUNC2 (cond),
			low_value, high_value);

  /* After labels, make any new cleanups in the function go into their
     own new (temporary) binding contour.  */
  for (p = current_binding_level;
       p->kind != sk_function_parms;
       p = p->level_chain)
    p->more_cleanups_ok = 0;

  return r;
}