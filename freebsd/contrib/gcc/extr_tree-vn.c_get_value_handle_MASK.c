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
typedef  TYPE_1__* tree_ann_common_t ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  value_handle; } ;

/* Variables and functions */
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

tree
FUNC7 (tree expr)
{

  if (FUNC5 (expr))
    return expr;

  if (FUNC3 (expr) == SSA_NAME)
    return FUNC2 (expr);
  else if (FUNC1 (expr) || FUNC0 (expr) || FUNC3 (expr) == TREE_LIST
	   || FUNC3 (expr) == CONSTRUCTOR)
    {
      tree_ann_common_t ann = FUNC6 (expr);
      return ((ann) ? ann->value_handle : NULL_TREE);
    }
  else
    FUNC4 ();
}