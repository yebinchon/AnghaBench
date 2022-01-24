#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  pv_minor; } ;
struct dlm_query_join_request {int node_idx; TYPE_2__ fs_proto; TYPE_2__ dlm_proto; int /*<<< orphan*/  node_map; int /*<<< orphan*/  name_len; int /*<<< orphan*/  domain; } ;
struct dlm_query_join_packet {void* code; int /*<<< orphan*/  fs_minor; int /*<<< orphan*/  dlm_minor; } ;
struct TYPE_3__ {int state; } ;
struct dlm_ctxt {scalar_t__ dlm_state; scalar_t__ joining_node; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  fs_locking_proto; int /*<<< orphan*/  dlm_locking_proto; int /*<<< orphan*/  domain_map; int /*<<< orphan*/  recovery_map; TYPE_1__ reco; } ;

/* Variables and functions */
 scalar_t__ DLM_CTXT_LEAVING ; 
 scalar_t__ DLM_CTXT_NEW ; 
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_RECO_STATE_ACTIVE ; 
 void* JOIN_DISALLOW ; 
 void* JOIN_OK ; 
 void* JOIN_OK_NO_MAP ; 
 void* JOIN_PROTOCOL_MISMATCH ; 
 scalar_t__ O2NM_MAX_NODES ; 
 struct dlm_ctxt* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_query_join_packet*,int*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct o2net_msg *msg, u32 len, void *data,
				  void **ret_data)
{
	struct dlm_query_join_request *query;
	struct dlm_query_join_packet packet = {
		.code = JOIN_DISALLOW,
	};
	struct dlm_ctxt *dlm = NULL;
	u32 response;
	u8 nodenum;

	query = (struct dlm_query_join_request *) msg->buf;

	FUNC5(0, "node %u wants to join domain %s\n", query->node_idx,
		  query->domain);

	/*
	 * If heartbeat doesn't consider the node live, tell it
	 * to back off and try again.  This gives heartbeat a chance
	 * to catch up.
	 */
	if (!FUNC6(query->node_idx)) {
		FUNC5(0, "node %u is not in our live map yet\n",
		     query->node_idx);

		packet.code = JOIN_DISALLOW;
		goto respond;
	}

	packet.code = JOIN_OK_NO_MAP;

	FUNC7(&dlm_domain_lock);
	dlm = FUNC0(query->domain, query->name_len);
	if (!dlm)
		goto unlock_respond;

	/*
	 * There is a small window where the joining node may not see the
	 * node(s) that just left but still part of the cluster. DISALLOW
	 * join request if joining node has different node map.
	 */
	nodenum=0;
	while (nodenum < O2NM_MAX_NODES) {
		if (FUNC9(nodenum, dlm->domain_map)) {
			if (!FUNC2(nodenum, query->node_map)) {
				FUNC5(0, "disallow join as node %u does not "
				     "have node %u in its nodemap\n",
				     query->node_idx, nodenum);
				packet.code = JOIN_DISALLOW;
				goto unlock_respond;
			}
		}
		nodenum++;
	}

	/* Once the dlm ctxt is marked as leaving then we don't want
	 * to be put in someone's domain map. 
	 * Also, explicitly disallow joining at certain troublesome
	 * times (ie. during recovery). */
	if (dlm && dlm->dlm_state != DLM_CTXT_LEAVING) {
		int bit = query->node_idx;
		FUNC7(&dlm->spinlock);

		if (dlm->dlm_state == DLM_CTXT_NEW &&
		    dlm->joining_node == DLM_LOCK_RES_OWNER_UNKNOWN) {
			/*If this is a brand new context and we
			 * haven't started our join process yet, then
			 * the other node won the race. */
			packet.code = JOIN_OK_NO_MAP;
		} else if (dlm->joining_node != DLM_LOCK_RES_OWNER_UNKNOWN) {
			/* Disallow parallel joins. */
			packet.code = JOIN_DISALLOW;
		} else if (dlm->reco.state & DLM_RECO_STATE_ACTIVE) {
			FUNC5(0, "node %u trying to join, but recovery "
			     "is ongoing.\n", bit);
			packet.code = JOIN_DISALLOW;
		} else if (FUNC9(bit, dlm->recovery_map)) {
			FUNC5(0, "node %u trying to join, but it "
			     "still needs recovery.\n", bit);
			packet.code = JOIN_DISALLOW;
		} else if (FUNC9(bit, dlm->domain_map)) {
			FUNC5(0, "node %u trying to join, but it "
			     "is still in the domain! needs recovery?\n",
			     bit);
			packet.code = JOIN_DISALLOW;
		} else {
			/* Alright we're fully a part of this domain
			 * so we keep some state as to who's joining
			 * and indicate to him that needs to be fixed
			 * up. */

			/* Make sure we speak compatible locking protocols.  */
			if (FUNC4("DLM", bit,
						       &dlm->dlm_locking_proto,
						       &query->dlm_proto)) {
				packet.code = JOIN_PROTOCOL_MISMATCH;
			} else if (FUNC4("fs", bit,
							      &dlm->fs_locking_proto,
							      &query->fs_proto)) {
				packet.code = JOIN_PROTOCOL_MISMATCH;
			} else {
				packet.dlm_minor = query->dlm_proto.pv_minor;
				packet.fs_minor = query->fs_proto.pv_minor;
				packet.code = JOIN_OK;
				FUNC1(dlm, query->node_idx);
			}
		}

		FUNC8(&dlm->spinlock);
	}
unlock_respond:
	FUNC8(&dlm_domain_lock);

respond:
	FUNC5(0, "We respond with %u\n", packet.code);

	FUNC3(&packet, &response);
	return response;
}