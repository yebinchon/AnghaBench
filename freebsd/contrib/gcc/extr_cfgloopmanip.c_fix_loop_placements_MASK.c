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
struct loops {int dummy; } ;
struct loop {struct loop* outer; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loops*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*) ; 
 TYPE_1__* FUNC2 (struct loop*) ; 

__attribute__((used)) static void
FUNC3 (struct loops *loops, struct loop *loop,
		     bool *irred_invalidated)
{
  struct loop *outer;

  while (loop->outer)
    {
      outer = loop->outer;
      if (!FUNC1 (loop))
	break;

      /* Changing the placement of a loop in the loop tree may alter the
	 validity of condition 2) of the description of fix_bb_placement
	 for its preheader, because the successor is the header and belongs
	 to the loop.  So call fix_bb_placements to fix up the placement
	 of the preheader and (possibly) of its predecessors.  */
      FUNC0 (loops, FUNC2 (loop)->src,
			 irred_invalidated);
      loop = outer;
    }
}