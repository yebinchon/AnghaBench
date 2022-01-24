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
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_list_node ; 

__attribute__((used)) static tree
FUNC5 (tree ptr)
{
  tree fn;

  fn = FUNC2 ("__cxa_free_exception");
  if (!FUNC1 (fn, &fn))
    {
      /* Declare void __cxa_free_exception (void *).  */
      fn = FUNC3 (fn, FUNC4 (NULL_TREE, ptr_type_node,
						void_list_node));
    }

  return FUNC0 (fn, FUNC4 (NULL_TREE, ptr, NULL_TREE));
}