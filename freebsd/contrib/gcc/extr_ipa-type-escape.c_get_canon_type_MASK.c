#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_to_canon_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree 
FUNC7 (tree type, bool see_thru_ptrs, bool see_thru_arrays)
{
  splay_tree_node result;
  /* Strip the *'s off.  */
  if (!type || !FUNC6 (type))
    return NULL;

  type = FUNC3 (type);
  if (see_thru_arrays) 
    while (FUNC0 (type) || FUNC1 (type) == ARRAY_TYPE)
      type = FUNC3 (FUNC2 (type));

  else if (see_thru_ptrs) 
    while (FUNC0 (type))
	type = FUNC3 (FUNC2 (type));

  result = FUNC5(type_to_canon_type, (splay_tree_key) type);
  
  if (result == NULL)
    return FUNC4 (type);
  else return (tree) result->value;
}