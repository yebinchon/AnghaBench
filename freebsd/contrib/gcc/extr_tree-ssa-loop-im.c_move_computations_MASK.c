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
struct dom_walk_data {int /*<<< orphan*/  before_dom_children_before_stmts; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 int /*<<< orphan*/  TODO_update_ssa ; 
 int /*<<< orphan*/  FUNC0 (struct dom_walk_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dom_walk_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dom_walk_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  move_computations_stmt ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dom_walk_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  struct dom_walk_data walk_data;

  FUNC3 (&walk_data, 0, sizeof (struct dom_walk_data));
  walk_data.before_dom_children_before_stmts = move_computations_stmt;

  FUNC1 (&walk_data);
  FUNC6 (&walk_data, ENTRY_BLOCK_PTR);
  FUNC0 (&walk_data);

  FUNC2 ();
  if (FUNC4 ())
    FUNC5 (NULL, TODO_update_ssa);
}