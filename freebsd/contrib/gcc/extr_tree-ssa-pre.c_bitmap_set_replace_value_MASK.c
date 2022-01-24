#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* value_set_t ;
typedef  TYPE_2__* value_set_node_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_3__* bitmap_set_t ;
struct TYPE_9__ {int /*<<< orphan*/  expressions; } ;
struct TYPE_8__ {int /*<<< orphan*/  expr; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* head; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (bitmap_set_t set, tree lookfor, tree expr)
{
  value_set_t exprset;
  value_set_node_t node;
  if (FUNC7 (lookfor))
    return;
  if (!FUNC6 (set, lookfor))
    return;

  /* The number of expressions having a given value is usually
     significantly less than the total number of expressions in SET.
     Thus, rather than check, for each expression in SET, whether it
     has the value LOOKFOR, we walk the reverse mapping that tells us
     what expressions have a given value, and see if any of those
     expressions are in our set.  For large testcases, this is about
     5-10x faster than walking the bitmap.  If this is somehow a
     significant lose for some cases, we can choose which set to walk
     based on the set size.  */
  exprset = FUNC2 (lookfor);
  for (node = exprset->head; node; node = node->next)
    {
      if (FUNC1 (node->expr) == SSA_NAME)
	{
	  if (FUNC3 (set->expressions, FUNC0 (node->expr)))
	    {
	      FUNC4 (set->expressions, FUNC0 (node->expr));
	      FUNC5 (set->expressions, FUNC0 (expr));
	      return;
	    }
	}
    }
}