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
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* case_node_ptr ;
struct TYPE_3__ {int /*<<< orphan*/  high; struct TYPE_3__* parent; int /*<<< orphan*/  low; scalar_t__ left; } ;

/* Variables and functions */
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (case_node_ptr node, tree index_type)
{
  tree low_minus_one;
  case_node_ptr pnode;

  /* If the lower bound of this node is the lowest value in the index type,
     we need not test it.  */

  if (FUNC4 (node->low, FUNC1 (index_type)))
    return 1;

  /* If this node has a left branch, the value at the left must be less
     than that at this node, so it cannot be bounded at the bottom and
     we need not bother testing any further.  */

  if (node->left)
    return 0;

  low_minus_one = FUNC3 (MINUS_EXPR, FUNC0 (node->low),
			       node->low,
			       FUNC2 (FUNC0 (node->low), 1));

  /* If the subtraction above overflowed, we can't verify anything.
     Otherwise, look for a parent that tests our value - 1.  */

  if (! FUNC5 (low_minus_one, node->low))
    return 0;

  for (pnode = node->parent; pnode; pnode = pnode->parent)
    if (FUNC4 (low_minus_one, pnode->high))
      return 1;

  return 0;
}