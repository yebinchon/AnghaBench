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
typedef  int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcount; } ;
struct dlm_master_list_entry {scalar_t__ type; int new_master; int master; scalar_t__ inuse; TYPE_2__ mle_refs; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  wq; int /*<<< orphan*/  woken; int /*<<< orphan*/  response_map; int /*<<< orphan*/  maybe_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int state; int owner; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  wq; TYPE_1__ lockname; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  name; int /*<<< orphan*/  master_lock; } ;
struct dlm_assert_master {char* name; unsigned int namelen; int node_idx; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DLM_ASSERT_MASTER_FINISH_MIGRATION ; 
 int DLM_ASSERT_MASTER_MLE_CLEANUP ; 
 int DLM_ASSERT_RESPONSE_MASTERY_REF ; 
 int DLM_ASSERT_RESPONSE_REASSERT ; 
 unsigned int DLM_LOCKID_NAME_MAX ; 
 int DLM_LOCK_RES_DIRTY ; 
 int DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int DLM_LOCK_RES_SETREF_INPROG ; 
 scalar_t__ DLM_MLE_BLOCK ; 
 scalar_t__ DLM_MLE_MIGRATION ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int O2NM_MAX_NODES ; 
 struct dlm_lock_resource* FUNC2 (struct dlm_ctxt*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ctxt*,struct dlm_lock_resource*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ctxt*) ; 
 unsigned int FUNC13 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_ctxt*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct o2net_msg *msg, u32 len, void *data,
			      void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	struct dlm_master_list_entry *mle = NULL;
	struct dlm_assert_master *assert = (struct dlm_assert_master *)msg->buf;
	struct dlm_lock_resource *res = NULL;
	char *name;
	unsigned int namelen, hash;
	u32 flags;
	int master_request = 0, have_lockres_ref = 0;
	int ret = 0;

	if (!FUNC12(dlm))
		return 0;

	name = assert->name;
	namelen = assert->namelen;
	hash = FUNC13(name, namelen);
	flags = FUNC9(assert->flags);

	if (namelen > DLM_LOCKID_NAME_MAX) {
		FUNC17(ML_ERROR, "Invalid name length!");
		goto done;
	}

	FUNC18(&dlm->spinlock);

	if (flags)
		FUNC17(0, "assert_master with flags: %u\n", flags);

	/* find the MLE */
	FUNC18(&dlm->master_lock);
	if (!FUNC11(dlm, &mle, name, namelen)) {
		/* not an error, could be master just re-asserting */
		FUNC17(0, "just got an assert_master from %u, but no "
		     "MLE for it! (%.*s)\n", assert->node_idx,
		     namelen, name);
	} else {
		int bit = FUNC16 (mle->maybe_map, O2NM_MAX_NODES, 0);
		if (bit >= O2NM_MAX_NODES) {
			/* not necessarily an error, though less likely.
			 * could be master just re-asserting. */
			FUNC17(0, "no bits set in the maybe_map, but %u "
			     "is asserting! (%.*s)\n", assert->node_idx,
			     namelen, name);
		} else if (bit != assert->node_idx) {
			if (flags & DLM_ASSERT_MASTER_MLE_CLEANUP) {
				FUNC17(0, "master %u was found, %u should "
				     "back off\n", assert->node_idx, bit);
			} else {
				/* with the fix for bug 569, a higher node
				 * number winning the mastery will respond
				 * YES to mastery requests, but this node
				 * had no way of knowing.  let it pass. */
				FUNC17(0, "%u is the lowest node, "
				     "%u is asserting. (%.*s)  %u must "
				     "have begun after %u won.\n", bit,
				     assert->node_idx, namelen, name, bit,
				     assert->node_idx);
			}
		}
		if (mle->type == DLM_MLE_MIGRATION) {
			if (flags & DLM_ASSERT_MASTER_MLE_CLEANUP) {
				FUNC17(0, "%s:%.*s: got cleanup assert"
				     " from %u for migration\n",
				     dlm->name, namelen, name,
				     assert->node_idx);
			} else if (!(flags & DLM_ASSERT_MASTER_FINISH_MIGRATION)) {
				FUNC17(0, "%s:%.*s: got unrelated assert"
				     " from %u for migration, ignoring\n",
				     dlm->name, namelen, name,
				     assert->node_idx);
				FUNC5(mle);
				FUNC19(&dlm->master_lock);
				FUNC19(&dlm->spinlock);
				goto done;
			}	
		}
	}
	FUNC19(&dlm->master_lock);

	/* ok everything checks out with the MLE
	 * now check to see if there is a lockres */
	res = FUNC2(dlm, name, namelen, hash);
	if (res) {
		FUNC18(&res->spinlock);
		if (res->state & DLM_LOCK_RES_RECOVERING)  {
			FUNC17(ML_ERROR, "%u asserting but %.*s is "
			     "RECOVERING!\n", assert->node_idx, namelen, name);
			goto kill;
		}
		if (!mle) {
			if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN &&
			    res->owner != assert->node_idx) {
				FUNC17(ML_ERROR, "DIE! Mastery assert from %u, "
				     "but current owner is %u! (%.*s)\n",
				     assert->node_idx, res->owner, namelen,
				     name);
				FUNC4(res);
				FUNC0();
			}
		} else if (mle->type != DLM_MLE_MIGRATION) {
			if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
				/* owner is just re-asserting */
				if (res->owner == assert->node_idx) {
					FUNC17(0, "owner %u re-asserting on "
					     "lock %.*s\n", assert->node_idx,
					     namelen, name);
					goto ok;
				}
				FUNC17(ML_ERROR, "got assert_master from "
				     "node %u, but %u is the owner! "
				     "(%.*s)\n", assert->node_idx,
				     res->owner, namelen, name);
				goto kill;
			}
			if (!(res->state & DLM_LOCK_RES_IN_PROGRESS)) {
				FUNC17(ML_ERROR, "got assert from %u, but lock "
				     "with no owner should be "
				     "in-progress! (%.*s)\n",
				     assert->node_idx,
				     namelen, name);
				goto kill;
			}
		} else /* mle->type == DLM_MLE_MIGRATION */ {
			/* should only be getting an assert from new master */
			if (assert->node_idx != mle->new_master) {
				FUNC17(ML_ERROR, "got assert from %u, but "
				     "new master is %u, and old master "
				     "was %u (%.*s)\n",
				     assert->node_idx, mle->new_master,
				     mle->master, namelen, name);
				goto kill;
			}

		}
ok:
		FUNC19(&res->spinlock);
	}
	FUNC19(&dlm->spinlock);

	// mlog(0, "woo!  got an assert_master from node %u!\n",
	// 	     assert->node_idx);
	if (mle) {
		int extra_ref = 0;
		int nn = -1;
		int rr, err = 0;
		
		FUNC18(&mle->spinlock);
		if (mle->type == DLM_MLE_BLOCK || mle->type == DLM_MLE_MIGRATION)
			extra_ref = 1;
		else {
			/* MASTER mle: if any bits set in the response map
			 * then the calling node needs to re-assert to clear
			 * up nodes that this node contacted */
			while ((nn = FUNC16 (mle->response_map, O2NM_MAX_NODES, 
						    nn+1)) < O2NM_MAX_NODES) {
				if (nn != dlm->node_num && nn != assert->node_idx)
					master_request = 1;
			}
		}
		mle->master = assert->node_idx;
		FUNC8(&mle->woken, 1);
		FUNC20(&mle->wq);
		FUNC19(&mle->spinlock);

		if (res) {
			int wake = 0;
			FUNC18(&res->spinlock);
			if (mle->type == DLM_MLE_MIGRATION) {
				FUNC17(0, "finishing off migration of lockres %.*s, "
			     		"from %u to %u\n",
			       		res->lockname.len, res->lockname.name,
			       		dlm->node_num, mle->new_master);
				res->state &= ~DLM_LOCK_RES_MIGRATING;
				wake = 1;
				FUNC10(dlm, res, mle->new_master);
				FUNC1(res->state & DLM_LOCK_RES_DIRTY);
			} else {
				FUNC10(dlm, res, mle->master);
			}
			FUNC19(&res->spinlock);
			have_lockres_ref = 1;
			if (wake)
				FUNC20(&res->wq);
		}

		/* master is known, detach if not already detached.
		 * ensures that only one assert_master call will happen
		 * on this mle. */
		FUNC18(&dlm->spinlock);
		FUNC18(&dlm->master_lock);

		rr = FUNC7(&mle->mle_refs.refcount);
		if (mle->inuse > 0) {
			if (extra_ref && rr < 3)
				err = 1;
			else if (!extra_ref && rr < 2)
				err = 1;
		} else {
			if (extra_ref && rr < 2)
				err = 1;
			else if (!extra_ref && rr < 1)
				err = 1;
		}
		if (err) {
			FUNC17(ML_ERROR, "%s:%.*s: got assert master from %u "
			     "that will mess up this node, refs=%d, extra=%d, "
			     "inuse=%d\n", dlm->name, namelen, name,
			     assert->node_idx, rr, extra_ref, mle->inuse);
			FUNC14(mle);
		}
		FUNC6(dlm, mle);
		FUNC3(dlm, mle);
		FUNC5(mle);
		if (extra_ref) {
			/* the assert master message now balances the extra
		 	 * ref given by the master / migration request message.
		 	 * if this is the last put, it will be removed
		 	 * from the list. */
			FUNC5(mle);
		}
		FUNC19(&dlm->master_lock);
		FUNC19(&dlm->spinlock);
	} else if (res) {
		if (res->owner != assert->node_idx) {
			FUNC17(0, "assert_master from %u, but current "
			     "owner is %u (%.*s), no mle\n", assert->node_idx,
			     res->owner, namelen, name);
		}
	}

done:
	ret = 0;
	if (res) {
		FUNC18(&res->spinlock);
		res->state |= DLM_LOCK_RES_SETREF_INPROG;
		FUNC19(&res->spinlock);
		*ret_data = (void *)res;
	}
	FUNC15(dlm);
	if (master_request) {
		FUNC17(0, "need to tell master to reassert\n");
		/* positive. negative would shoot down the node. */
		ret |= DLM_ASSERT_RESPONSE_REASSERT;
		if (!have_lockres_ref) {
			FUNC17(ML_ERROR, "strange, got assert from %u, MASTER "
			     "mle present here for %s:%.*s, but no lockres!\n",
			     assert->node_idx, dlm->name, namelen, name);
		}
	}
	if (have_lockres_ref) {
		/* let the master know we have a reference to the lockres */
		ret |= DLM_ASSERT_RESPONSE_MASTERY_REF;
		FUNC17(0, "%s:%.*s: got assert from %u, need a ref\n",
		     dlm->name, namelen, name, assert->node_idx);
	}
	return ret;

kill:
	/* kill the caller! */
	FUNC17(ML_ERROR, "Bad message received from another node.  Dumping state "
	     "and killing the other node now!  This node is OK and can continue.\n");
	FUNC4(res);
	FUNC19(&res->spinlock);
	FUNC19(&dlm->spinlock);
	*ret_data = (void *)res; 
	FUNC15(dlm);
	return -EINVAL;
}