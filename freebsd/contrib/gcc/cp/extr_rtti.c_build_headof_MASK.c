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
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ POINTER_TYPE ; 
 int TARGET_VTABLE_DATA_ENTRY_DISTANCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  ptrdiff_type_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC12 (tree exp)
{
  tree type = FUNC1 (exp);
  tree offset;
  tree index;

  FUNC10 (FUNC0 (type) == POINTER_TYPE);
  type = FUNC1 (type);

  if (!FUNC2 (type))
    return exp;

  /* We use this a couple of times below, protect it.  */
  exp = FUNC11 (exp);

  /* The offset-to-top field is at index -2 from the vptr.  */
  index = FUNC5 (NULL_TREE,
			 -2 * TARGET_VTABLE_DATA_ENTRY_DISTANCE);

  offset = FUNC7 (FUNC4 (exp, NULL), index);

  type = FUNC6 (ptr_type_node,
			       FUNC9 (FUNC1 (exp)));
  return FUNC3 (PLUS_EXPR, type, exp,
		 FUNC8 (ptrdiff_type_node, offset));
}