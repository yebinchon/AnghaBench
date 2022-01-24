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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_list_node ; 

__attribute__((used)) static tree
FUNC7 (void)
{
  tree fn;

  fn = FUNC4 ("__cxa_get_exception_ptr");
  if (!FUNC3 (fn, &fn))
    {
      /* Declare void* __cxa_get_exception_ptr (void *).  */
      tree tmp = FUNC6 (NULL_TREE, ptr_type_node, void_list_node);
      fn = FUNC5 (fn, FUNC2 (ptr_type_node, tmp));
    }

  return FUNC1 (fn, FUNC6 (NULL_TREE, FUNC0 (),
					     NULL_TREE));
}