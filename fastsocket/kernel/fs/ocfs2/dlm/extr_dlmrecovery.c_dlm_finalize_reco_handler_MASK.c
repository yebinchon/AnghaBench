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
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_finalize_reco {int flags; int /*<<< orphan*/  node_idx; int /*<<< orphan*/  dead_node; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  new_master; int /*<<< orphan*/  dead_node; } ;
struct dlm_ctxt {TYPE_1__ reco; int /*<<< orphan*/  name; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DLM_FINALIZE_STAGE2 ; 
 int DLM_RECO_STATE_FINALIZE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct o2net_msg *msg, u32 len, void *data,
			      void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_finalize_reco *fr = (struct dlm_finalize_reco *)msg->buf;
	int stage = 1;

	/* ok to return 0, domain has gone away */
	if (!FUNC2(dlm))
		return 0;

	if (fr->flags & DLM_FINALIZE_STAGE2)
		stage = 2;

	FUNC7(0, "%s: node %u finalizing recovery stage%d of "
	     "node %u (%u:%u)\n", dlm->name, fr->node_idx, stage,
	     fr->dead_node, dlm->reco.dead_node, dlm->reco.new_master);
 
	FUNC8(&dlm->spinlock);

	if (dlm->reco.new_master != fr->node_idx) {
		FUNC7(ML_ERROR, "node %u sent recovery finalize msg, but node "
		     "%u is supposed to be the new master, dead=%u\n",
		     fr->node_idx, dlm->reco.new_master, fr->dead_node);
		FUNC0();
	}
	if (dlm->reco.dead_node != fr->dead_node) {
		FUNC7(ML_ERROR, "node %u sent recovery finalize msg for dead "
		     "node %u, but node %u is supposed to be dead\n",
		     fr->node_idx, fr->dead_node, dlm->reco.dead_node);
		FUNC0();
	}

	switch (stage) {
		case 1:
			FUNC1(dlm, fr->dead_node, fr->node_idx);
			if (dlm->reco.state & DLM_RECO_STATE_FINALIZE) {
				FUNC7(ML_ERROR, "%s: received finalize1 from "
				     "new master %u for dead node %u, but "
				     "this node has already received it!\n",
				     dlm->name, fr->node_idx, fr->dead_node);
				FUNC4(dlm);
				FUNC0();
			}
			dlm->reco.state |= DLM_RECO_STATE_FINALIZE;
			FUNC9(&dlm->spinlock);
			break;
		case 2:
			if (!(dlm->reco.state & DLM_RECO_STATE_FINALIZE)) {
				FUNC7(ML_ERROR, "%s: received finalize2 from "
				     "new master %u for dead node %u, but "
				     "this node did not have finalize1!\n",
				     dlm->name, fr->node_idx, fr->dead_node);
				FUNC4(dlm);
				FUNC0();
			}
			dlm->reco.state &= ~DLM_RECO_STATE_FINALIZE;
			FUNC9(&dlm->spinlock);
			FUNC6(dlm);
			FUNC3(dlm);
			break;
		default:
			FUNC0();
	}

	FUNC7(0, "%s: recovery done, reco master was %u, dead now %u, master now %u\n",
	     dlm->name, fr->node_idx, dlm->reco.dead_node, dlm->reco.new_master);

	FUNC5(dlm);
	return 0;
}