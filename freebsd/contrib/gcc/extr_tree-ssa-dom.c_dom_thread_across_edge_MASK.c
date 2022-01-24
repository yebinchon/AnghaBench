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
struct dom_walk_data {int /*<<< orphan*/  global_data; } ;
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_and_copies_stack ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  simplify_stmt_for_jump_threading ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC3 (struct dom_walk_data *walk_data, edge e)
{
  /* If we don't already have a dummy condition, build it now.  */
  if (! walk_data->global_data)
    {
      tree dummy_cond = FUNC0 (NE_EXPR, boolean_type_node,
			        integer_zero_node, integer_zero_node);
      dummy_cond = FUNC1 (COND_EXPR, void_type_node, dummy_cond, NULL, NULL);
      walk_data->global_data = dummy_cond;
    }

  FUNC2 (walk_data->global_data, e, false,
		      &const_and_copies_stack,
		      simplify_stmt_for_jump_threading);
}