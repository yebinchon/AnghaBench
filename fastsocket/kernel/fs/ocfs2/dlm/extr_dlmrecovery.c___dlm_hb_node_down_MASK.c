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
struct TYPE_2__ {int new_master; int state; } ;
struct dlm_ctxt {int joining_node; int /*<<< orphan*/  recovery_map; int /*<<< orphan*/  name; int /*<<< orphan*/  migration_wq; int /*<<< orphan*/  domain_map; int /*<<< orphan*/  live_nodes_map; TYPE_1__ reco; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_RECO_STATE_FINALIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct dlm_ctxt *dlm, int idx)
{
	FUNC2(&dlm->spinlock);

	if (dlm->reco.new_master == idx) {
		FUNC6(0, "%s: recovery master %d just died\n",
		     dlm->name, idx);
		if (dlm->reco.state & DLM_RECO_STATE_FINALIZE) {
			/* finalize1 was reached, so it is safe to clear
			 * the new_master and dead_node.  that recovery
			 * is complete. */
			FUNC6(0, "%s: dead master %d had reached "
			     "finalize1 state, clearing\n", dlm->name, idx);
			dlm->reco.state &= ~DLM_RECO_STATE_FINALIZE;
			FUNC0(dlm);
		}
	}

	/* Clean up join state on node death. */
	if (dlm->joining_node == idx) {
		FUNC6(0, "Clearing join state for node %u\n", idx);
		FUNC1(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);
	}

	/* check to see if the node is already considered dead */
	if (!FUNC8(idx, dlm->live_nodes_map)) {
		FUNC6(0, "for domain %s, node %d is already dead. "
		     "another node likely did recovery already.\n",
		     dlm->name, idx);
		return;
	}

	/* check to see if we do not care about this node */
	if (!FUNC8(idx, dlm->domain_map)) {
		/* This also catches the case that we get a node down
		 * but haven't joined the domain yet. */
		FUNC6(0, "node %u already removed from domain!\n", idx);
		return;
	}

	FUNC3(idx, dlm->live_nodes_map);

	/* make sure local cleanup occurs before the heartbeat events */
	if (!FUNC8(idx, dlm->recovery_map))
		FUNC4(dlm, idx);

	/* notify anything attached to the heartbeat events */
	FUNC5(dlm, idx, 0);

	FUNC6(0, "node %u being removed from domain map!\n", idx);
	FUNC3(idx, dlm->domain_map);
	/* wake up migration waiters if a node goes down.
	 * perhaps later we can genericize this for other waiters. */
	FUNC9(&dlm->migration_wq);

	if (FUNC8(idx, dlm->recovery_map))
		FUNC6(0, "domain %s, node %u already added "
		     "to recovery map!\n", dlm->name, idx);
	else
		FUNC7(idx, dlm->recovery_map);
}