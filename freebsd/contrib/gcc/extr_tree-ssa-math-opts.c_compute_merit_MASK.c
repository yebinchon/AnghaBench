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
struct occurrence {scalar_t__ num_divisions; int /*<<< orphan*/  bb; struct occurrence* children; struct occurrence* next; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_exceptions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct occurrence *occ)
{
  struct occurrence *occ_child;
  basic_block dom = occ->bb;

  for (occ_child = occ->children; occ_child; occ_child = occ_child->next)
    {
      basic_block bb;
      if (occ_child->children)
        FUNC2 (occ_child);

      if (flag_exceptions)
	bb = FUNC1 (dom);
      else
	bb = dom;

      if (FUNC0 (CDI_POST_DOMINATORS, bb, occ_child->bb))
        occ->num_divisions += occ_child->num_divisions;
    }
}