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
struct domain_join_ctxt {int /*<<< orphan*/  yes_resp_map; int /*<<< orphan*/  live_map; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  num_joins; int /*<<< orphan*/  dlm_state; int /*<<< orphan*/  domain_map; int /*<<< orphan*/  live_nodes_map; } ;
typedef  enum dlm_query_join_response_code { ____Placeholder_dlm_query_join_response_code } dlm_query_join_response_code ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CTXT_JOINED ; 
 int DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JOIN_DISALLOW ; 
 int JOIN_OK ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int FUNC2 (struct dlm_ctxt*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dlm_ctxt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct dlm_ctxt*,struct domain_join_ctxt*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct domain_join_ctxt*) ; 
 struct domain_join_ctxt* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct dlm_ctxt *dlm)
{
	int status = 0, tmpstat, node;
	struct domain_join_ctxt *ctxt;
	enum dlm_query_join_response_code response = JOIN_DISALLOW;

	FUNC11("%p", dlm);

	ctxt = FUNC8(sizeof(*ctxt), GFP_KERNEL);
	if (!ctxt) {
		status = -ENOMEM;
		FUNC12(status);
		goto bail;
	}

	/* group sem locking should work for us here -- we're already
	 * registered for heartbeat events so filling this should be
	 * atomic wrt getting those handlers called. */
	FUNC13(dlm->live_nodes_map, sizeof(dlm->live_nodes_map));

	FUNC15(&dlm->spinlock);
	FUNC9(ctxt->live_map, dlm->live_nodes_map, sizeof(ctxt->live_map));

	FUNC1(dlm, dlm->node_num);

	FUNC16(&dlm->spinlock);

	node = -1;
	while ((node = FUNC6(ctxt->live_map, O2NM_MAX_NODES,
				     node + 1)) < O2NM_MAX_NODES) {
		if (node == dlm->node_num)
			continue;

		status = FUNC2(dlm, node, &response);
		if (status < 0) {
			FUNC12(status);
			goto bail;
		}

		/* Ok, either we got a response or the node doesn't have a
		 * dlm up. */
		if (response == JOIN_OK)
			FUNC14(node, ctxt->yes_resp_map);

		if (FUNC5(dlm, ctxt, response)) {
			status = -EAGAIN;
			goto bail;
		}
	}

	FUNC10(0, "Yay, done querying nodes!\n");

	/* Yay, everyone agree's we can join the domain. My domain is
	 * comprised of all nodes who were put in the
	 * yes_resp_map. Copy that into our domain map and send a join
	 * assert message to clean up everyone elses state. */
	FUNC15(&dlm->spinlock);
	FUNC9(dlm->domain_map, ctxt->yes_resp_map,
	       sizeof(ctxt->yes_resp_map));
	FUNC14(dlm->node_num, dlm->domain_map);
	FUNC16(&dlm->spinlock);

	FUNC3(dlm, ctxt->yes_resp_map);

	/* Joined state *must* be set before the joining node
	 * information, otherwise the query_join handler may read no
	 * current joiner but a state of NEW and tell joining nodes
	 * we're not in the domain. */
	FUNC15(&dlm_domain_lock);
	dlm->dlm_state = DLM_CTXT_JOINED;
	dlm->num_joins++;
	FUNC16(&dlm_domain_lock);

bail:
	FUNC15(&dlm->spinlock);
	FUNC1(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);
	if (!status)
		FUNC0(dlm);
	FUNC16(&dlm->spinlock);

	if (ctxt) {
		/* Do we need to send a cancel message to any nodes? */
		if (status < 0) {
			tmpstat = FUNC4(dlm,
							ctxt->yes_resp_map,
							sizeof(ctxt->yes_resp_map));
			if (tmpstat < 0)
				FUNC12(tmpstat);
		}
		FUNC7(ctxt);
	}

	FUNC10(0, "returning %d\n", status);
	return status;
}