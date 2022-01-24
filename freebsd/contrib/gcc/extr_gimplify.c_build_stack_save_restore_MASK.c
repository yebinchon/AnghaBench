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
 size_t BUILT_IN_STACK_RESTORE ; 
 size_t BUILT_IN_STACK_SAVE ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (tree *save, tree *restore)
{
  tree save_call, tmp_var;

  save_call =
      FUNC1 (implicit_built_in_decls[BUILT_IN_STACK_SAVE],
				NULL_TREE);
  tmp_var = FUNC2 (ptr_type_node, "saved_stack");

  *save = FUNC0 (MODIFY_EXPR, ptr_type_node, tmp_var, save_call);
  *restore =
    FUNC1 (implicit_built_in_decls[BUILT_IN_STACK_RESTORE],
			      FUNC3 (NULL_TREE, tmp_var, NULL_TREE));
}