#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct bearer {size_t priority; TYPE_1__ nodes; int /*<<< orphan*/  active; } ;
struct bcbearer_pair {struct bearer* secondary; struct bearer* primary; } ;
struct TYPE_5__ {struct bcbearer_pair* bpairs; struct bcbearer_pair* bpairs_temp; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 int TIPC_MAX_LINK_PRI ; 
 int /*<<< orphan*/  bc_lock ; 
 TYPE_3__* bcbearer ; 
 int /*<<< orphan*/  FUNC0 (struct bcbearer_pair*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bearer* tipc_bearers ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 

void FUNC4(void)
{
	struct bcbearer_pair *bp_temp = bcbearer->bpairs_temp;
	struct bcbearer_pair *bp_curr;
	int b_index;
	int pri;

	FUNC1(&bc_lock);

	/* Group bearers by priority (can assume max of two per priority) */

	FUNC0(bp_temp, 0, sizeof(bcbearer->bpairs_temp));

	for (b_index = 0; b_index < MAX_BEARERS; b_index++) {
		struct bearer *b = &tipc_bearers[b_index];

		if (!b->active || !b->nodes.count)
			continue;

		if (!bp_temp[b->priority].primary)
			bp_temp[b->priority].primary = b;
		else
			bp_temp[b->priority].secondary = b;
	}

	/* Create array of bearer pairs for broadcasting */

	bp_curr = bcbearer->bpairs;
	FUNC0(bcbearer->bpairs, 0, sizeof(bcbearer->bpairs));

	for (pri = TIPC_MAX_LINK_PRI; pri >= 0; pri--) {

		if (!bp_temp[pri].primary)
			continue;

		bp_curr->primary = bp_temp[pri].primary;

		if (bp_temp[pri].secondary) {
			if (FUNC3(&bp_temp[pri].primary->nodes,
					    &bp_temp[pri].secondary->nodes)) {
				bp_curr->secondary = bp_temp[pri].secondary;
			} else {
				bp_curr++;
				bp_curr->primary = bp_temp[pri].secondary;
			}
		}

		bp_curr++;
	}

	FUNC2(&bc_lock);
}