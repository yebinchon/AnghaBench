#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  dest_idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (basic_block first, basic_block second,
				basic_block new_head, edge e)
{
  tree phi1, phi2;
  edge e2 = FUNC3 (new_head, second);

  /* Because NEW_HEAD has been created by splitting SECOND's incoming
     edge, we should always have an edge from NEW_HEAD to SECOND.  */
  FUNC4 (e2 != NULL);

  /* Browse all 'second' basic block phi nodes and add phi args to
     edge 'e' for 'first' head. PHI args are always in correct order.  */

  for (phi2 = FUNC5 (second), phi1 = FUNC5 (first);
       phi2 && phi1;
       phi2 = FUNC1 (phi2),  phi1 = FUNC1 (phi1))
    {
      tree def = FUNC0 (phi2, e2->dest_idx);
      FUNC2 (phi1, def, e);
    }
}