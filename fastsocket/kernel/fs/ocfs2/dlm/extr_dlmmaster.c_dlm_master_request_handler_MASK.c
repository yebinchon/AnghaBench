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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_master_request {char* name; unsigned int namelen; int /*<<< orphan*/  node_idx; } ;
struct dlm_master_list_entry {scalar_t__ type; scalar_t__ master; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  new_master; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int state; scalar_t__ owner; TYPE_1__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_ASSERT_MASTER_MLE_CLEANUP ; 
 int DLM_IVBUFLEN ; 
 unsigned int DLM_LOCKID_NAME_MAX ; 
 int DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_LOCK_RES_MIGRATING ; 
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int DLM_MASTER_RESP_ERROR ; 
 int DLM_MASTER_RESP_MAYBE ; 
 int DLM_MASTER_RESP_NO ; 
 int DLM_MASTER_RESP_YES ; 
 scalar_t__ DLM_MLE_BLOCK ; 
 scalar_t__ DLM_MLE_MIGRATION ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 struct dlm_lock_resource* FUNC2 (struct dlm_ctxt*,char*,unsigned int,unsigned int) ; 
 int FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int FUNC5 (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_master_list_entry*,scalar_t__,struct dlm_ctxt*,int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  dlm_mle_cache ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_master_list_entry*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct o2net_msg *msg, u32 len, void *data,
			       void **ret_data)
{
	u8 response = DLM_MASTER_RESP_MAYBE;
	struct dlm_ctxt *dlm = data;
	struct dlm_lock_resource *res = NULL;
	struct dlm_master_request *request = (struct dlm_master_request *) msg->buf;
	struct dlm_master_list_entry *mle = NULL, *tmpmle = NULL;
	char *name;
	unsigned int namelen, hash;
	int found, ret;
	int set_maybe;
	int dispatch_assert = 0;

	if (!FUNC6(dlm))
		return DLM_MASTER_RESP_NO;

	if (!FUNC4(dlm)) {
		response = DLM_MASTER_RESP_NO;
		goto send_response;
	}

	name = request->name;
	namelen = request->namelen;
	hash = FUNC8(name, namelen);

	if (namelen > DLM_LOCKID_NAME_MAX) {
		response = DLM_IVBUFLEN;
		goto send_response;
	}

way_up_top:
	FUNC18(&dlm->spinlock);
	res = FUNC2(dlm, name, namelen, hash);
	if (res) {
		FUNC19(&dlm->spinlock);

		/* take care of the easy cases up front */
		FUNC18(&res->spinlock);
		if (res->state & (DLM_LOCK_RES_RECOVERING|
				  DLM_LOCK_RES_MIGRATING)) {
			FUNC19(&res->spinlock);
			FUNC15(0, "returning DLM_MASTER_RESP_ERROR since res is "
			     "being recovered/migrated\n");
			response = DLM_MASTER_RESP_ERROR;
			if (mle)
				FUNC14(dlm_mle_cache, mle);
			goto send_response;
		}

		if (res->owner == dlm->node_num) {
			FUNC15(0, "%s:%.*s: setting bit %u in refmap\n",
			     dlm->name, namelen, name, request->node_idx);
			FUNC10(request->node_idx, res);
			FUNC19(&res->spinlock);
			response = DLM_MASTER_RESP_YES;
			if (mle)
				FUNC14(dlm_mle_cache, mle);

			/* this node is the owner.
			 * there is some extra work that needs to
			 * happen now.  the requesting node has
			 * caused all nodes up to this one to
			 * create mles.  this node now needs to
			 * go back and clean those up. */
			dispatch_assert = 1;
			goto send_response;
		} else if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
			FUNC19(&res->spinlock);
			// mlog(0, "node %u is the master\n", res->owner);
			response = DLM_MASTER_RESP_NO;
			if (mle)
				FUNC14(dlm_mle_cache, mle);
			goto send_response;
		}

		/* ok, there is no owner.  either this node is
		 * being blocked, or it is actively trying to
		 * master this lock. */
		if (!(res->state & DLM_LOCK_RES_IN_PROGRESS)) {
			FUNC15(ML_ERROR, "lock with no owner should be "
			     "in-progress!\n");
			FUNC0();
		}

		// mlog(0, "lockres is in progress...\n");
		FUNC18(&dlm->master_lock);
		found = FUNC5(dlm, &tmpmle, name, namelen);
		if (!found) {
			FUNC15(ML_ERROR, "no mle found for this lock!\n");
			FUNC0();
		}
		set_maybe = 1;
		FUNC18(&tmpmle->spinlock);
		if (tmpmle->type == DLM_MLE_BLOCK) {
			// mlog(0, "this node is waiting for "
			// "lockres to be mastered\n");
			response = DLM_MASTER_RESP_NO;
		} else if (tmpmle->type == DLM_MLE_MIGRATION) {
			FUNC15(0, "node %u is master, but trying to migrate to "
			     "node %u.\n", tmpmle->master, tmpmle->new_master);
			if (tmpmle->master == dlm->node_num) {
				FUNC15(ML_ERROR, "no owner on lockres, but this "
				     "node is trying to migrate it to %u?!\n",
				     tmpmle->new_master);
				FUNC0();
			} else {
				/* the real master can respond on its own */
				response = DLM_MASTER_RESP_NO;
			}
		} else if (tmpmle->master != DLM_LOCK_RES_OWNER_UNKNOWN) {
			set_maybe = 0;
			if (tmpmle->master == dlm->node_num) {
				response = DLM_MASTER_RESP_YES;
				/* this node will be the owner.
				 * go back and clean the mles on any
				 * other nodes */
				dispatch_assert = 1;
				FUNC10(request->node_idx, res);
				FUNC15(0, "%s:%.*s: setting bit %u in refmap\n",
				     dlm->name, namelen, name,
				     request->node_idx);
			} else
				response = DLM_MASTER_RESP_NO;
		} else {
			// mlog(0, "this node is attempting to "
			// "master lockres\n");
			response = DLM_MASTER_RESP_MAYBE;
		}
		if (set_maybe)
			FUNC17(request->node_idx, tmpmle->maybe_map);
		FUNC19(&tmpmle->spinlock);

		FUNC19(&dlm->master_lock);
		FUNC19(&res->spinlock);

		/* keep the mle attached to heartbeat events */
		FUNC12(tmpmle);
		if (mle)
			FUNC14(dlm_mle_cache, mle);
		goto send_response;
	}

	/*
	 * lockres doesn't exist on this node
	 * if there is an MLE_BLOCK, return NO
	 * if there is an MLE_MASTER, return MAYBE
	 * otherwise, add an MLE_BLOCK, return NO
	 */
	FUNC18(&dlm->master_lock);
	found = FUNC5(dlm, &tmpmle, name, namelen);
	if (!found) {
		/* this lockid has never been seen on this node yet */
		// mlog(0, "no mle found\n");
		if (!mle) {
			FUNC19(&dlm->master_lock);
			FUNC19(&dlm->spinlock);

			mle = (struct dlm_master_list_entry *)
				FUNC13(dlm_mle_cache, GFP_NOFS);
			if (!mle) {
				response = DLM_MASTER_RESP_ERROR;
				FUNC16(-ENOMEM);
				goto send_response;
			}
			goto way_up_top;
		}

		// mlog(0, "this is second time thru, already allocated, "
		// "add the block.\n");
		FUNC7(mle, DLM_MLE_BLOCK, dlm, NULL, name, namelen);
		FUNC17(request->node_idx, mle->maybe_map);
		FUNC1(dlm, mle);
		response = DLM_MASTER_RESP_NO;
	} else {
		// mlog(0, "mle was found\n");
		set_maybe = 1;
		FUNC18(&tmpmle->spinlock);
		if (tmpmle->master == dlm->node_num) {
			FUNC15(ML_ERROR, "no lockres, but an mle with this node as master!\n");
			FUNC0();
		}
		if (tmpmle->type == DLM_MLE_BLOCK)
			response = DLM_MASTER_RESP_NO;
		else if (tmpmle->type == DLM_MLE_MIGRATION) {
			FUNC15(0, "migration mle was found (%u->%u)\n",
			     tmpmle->master, tmpmle->new_master);
			/* real master can respond on its own */
			response = DLM_MASTER_RESP_NO;
		} else
			response = DLM_MASTER_RESP_MAYBE;
		if (set_maybe)
			FUNC17(request->node_idx, tmpmle->maybe_map);
		FUNC19(&tmpmle->spinlock);
	}
	FUNC19(&dlm->master_lock);
	FUNC19(&dlm->spinlock);

	if (found) {
		/* keep the mle attached to heartbeat events */
		FUNC12(tmpmle);
	}
send_response:
	/*
	 * __dlm_lookup_lockres() grabbed a reference to this lockres.
	 * The reference is released by dlm_assert_master_worker() under
	 * the call to dlm_dispatch_assert_master().  If
	 * dlm_assert_master_worker() isn't called, we drop it here.
	 */
	if (dispatch_assert) {
		if (response != DLM_MASTER_RESP_YES)
			FUNC15(ML_ERROR, "invalid response %d\n", response);
		if (!res) {
			FUNC15(ML_ERROR, "bad lockres while trying to assert!\n");
			FUNC0();
		}
		FUNC15(0, "%u is the owner of %.*s, cleaning everyone else\n",
			     dlm->node_num, res->lockname.len, res->lockname.name);
		ret = FUNC3(dlm, res, 0, request->node_idx, 
						 DLM_ASSERT_MASTER_MLE_CLEANUP);
		if (ret < 0) {
			FUNC15(ML_ERROR, "failed to dispatch assert master work\n");
			response = DLM_MASTER_RESP_ERROR;
			FUNC9(res);
		}
	} else {
		if (res)
			FUNC9(res);
	}

	FUNC11(dlm);
	return response;
}