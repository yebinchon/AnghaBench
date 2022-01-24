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
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

tree
FUNC12 (tree type)
{
  int e = 0;
  tree args = FUNC4 (type);

  FUNC9 (FUNC1 (type) == FUNCTION_TYPE);

  if (!FUNC10 (FUNC2 (type), void_type_node))
    {
      e = 1;
      FUNC8 ("%<operator delete%> must return type %qT", void_type_node);
    }

  if (!args || args == void_list_node
      || !FUNC10 (FUNC3 (args), ptr_type_node))
    {
      e = 2;
      if (args && args != void_list_node)
	args = FUNC0 (args);
      FUNC8 ("%<operator delete%> takes type %qT as first parameter",
	     ptr_type_node);
    }
  switch (e)
  {
    case 2:
      args = FUNC11 (NULL_TREE, ptr_type_node, args);
      /* Fall through.  */
    case 1:
      type = FUNC6
	      (FUNC7 (void_type_node, args),
	       FUNC5 (type));
      /* Fall through.  */
    default:;
  }

  return type;
}