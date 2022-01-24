#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* loc_chain; } ;
typedef  TYPE_1__ variable_part ;
typedef  TYPE_2__* location_chain ;
struct TYPE_6__ {int /*<<< orphan*/  loc; struct TYPE_6__* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (variable_part *vp1, variable_part *vp2)
{
  location_chain lc1, lc2;

  for (lc1 = vp1->loc_chain; lc1; lc1 = lc1->next)
    {
      for (lc2 = vp2->loc_chain; lc2; lc2 = lc2->next)
	{
	  if (FUNC1 (lc1->loc) && FUNC1 (lc2->loc))
	    {
	      if (FUNC0 (lc1->loc) == FUNC0 (lc2->loc))
		break;
	    }
	  if (FUNC2 (lc1->loc, lc2->loc))
	    break;
	}
      if (!lc2)
	return true;
    }
  return false;
}