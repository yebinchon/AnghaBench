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
typedef  scalar_t__ TREE_NOTHROW ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_BUILT_IN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ block_object_dispose_func_decl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC5 (void)
{
  tree func_type;
  if (block_object_dispose_func_decl)
    return block_object_dispose_func_decl;
  block_object_dispose_func_decl = FUNC3 (FUNC2 ("_Block_object_dispose"));
  if (block_object_dispose_func_decl)
    return block_object_dispose_func_decl;
  func_type =
      FUNC0 (void_type_node,
			    FUNC4 (NULL_TREE, ptr_type_node,
				       FUNC4 (NULL_TREE, integer_type_node, void_list_node)));

  block_object_dispose_func_decl = FUNC1 ("_Block_object_dispose", func_type,
						      0, NOT_BUILT_IN, 0, NULL_TREE);
  TREE_NOTHROW (block_object_dispose_func_decl) = 0;
  return block_object_dispose_func_decl;
}