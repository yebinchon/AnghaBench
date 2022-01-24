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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int TARGET_VTABLE_DATA_ENTRY_DISTANCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_info_ptr_type ; 

__attribute__((used)) static tree
FUNC13 (tree exp)
{
  tree type;
  tree t;

  if (FUNC9 (exp))
    return error_mark_node;

  /* peel back references, so they match.  */
  type = FUNC11 (FUNC1 (exp));

  /* Peel off cv qualifiers.  */
  type = FUNC2 (type);

  if (FUNC0 (type))
    type = FUNC7 (type, exp);

  if (!type)
    return error_mark_node;

  /* If exp is a reference to polymorphic type, get the real type_info.  */
  if (FUNC3 (type) && ! FUNC12 (exp, 0))
    {
      /* build reference to type_info from vtable.  */
      tree index;

      /* The RTTI information is at index -1.  */
      index = FUNC5 (NULL_TREE,
			     -1 * TARGET_VTABLE_DATA_ENTRY_DISTANCE);
      t = FUNC6 (exp, index);
      t = FUNC8 (type_info_ptr_type, t);
    }
  else
    /* Otherwise return the type_info for the static type of the expr.  */
    t = FUNC10 (FUNC2 (type));

  return FUNC4 (t, NULL);
}