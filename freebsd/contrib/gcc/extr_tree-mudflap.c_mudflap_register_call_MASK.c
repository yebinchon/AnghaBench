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
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enqueued_call_stmt_chain ; 
 int /*<<< orphan*/  mf_register_fndecl ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  size_type_node ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (tree obj, tree object_size, tree varname)
{
  tree arg, args, call_stmt;

  args = FUNC7 (NULL_TREE, varname, NULL_TREE);

  arg = FUNC4 (NULL_TREE, 4); /* __MF_TYPE_STATIC */
  args = FUNC7 (NULL_TREE, arg, args);

  arg = FUNC6 (size_type_node, object_size);
  args = FUNC7 (NULL_TREE, arg, args);

  arg = FUNC2 (ADDR_EXPR, FUNC5 (FUNC0 (obj)), obj);
  arg = FUNC6 (ptr_type_node, arg);
  args = FUNC7 (NULL_TREE, arg, args);

  call_stmt = FUNC3 (mf_register_fndecl, args);

  FUNC1 (call_stmt, &enqueued_call_stmt_chain);
}