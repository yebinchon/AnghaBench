#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct sra_elt {struct sra_elt* sibling; int /*<<< orphan*/  element; TYPE_1__* parent; int /*<<< orphan*/  is_group; } ;
struct TYPE_2__ {struct sra_elt* children; } ;

/* Variables and functions */
 scalar_t__ RANGE_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sra_elt *
FUNC5 (struct sra_elt *child, struct sra_elt *group)
{
  FUNC2 (group->is_group);

  /* Find the next child in the parent.  */
  if (child)
    child = child->sibling;
  else
    child = group->parent->children;

  /* Skip siblings that do not belong to the group.  */
  while (child)
    {
      tree g_elt = group->element;
      if (FUNC0 (g_elt) == RANGE_EXPR)
	{
	  if (!FUNC4 (child->element, FUNC1 (g_elt, 0))
	      && !FUNC4 (FUNC1 (g_elt, 1), child->element))
	    break;
	}
      else
	FUNC3 ();

      child = child->sibling;
    }

  return child;
}