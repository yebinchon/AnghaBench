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
typedef  scalar_t__ u8 ;
struct dlm_master_list_entry {scalar_t__ master; scalar_t__ type; int /*<<< orphan*/  vote_map; int /*<<< orphan*/  woken; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  response_map; int /*<<< orphan*/  node_map; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ name; } ;
struct dlm_lock_resource {scalar_t__ owner; int /*<<< orphan*/  spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {scalar_t__ name; int node_num; } ;

/* Variables and functions */
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int /*<<< orphan*/  DLM_MASTERY_TIMEOUT_MS ; 
 scalar_t__ DLM_MLE_BLOCK ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ O2NM_MAX_NODES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ; 
 int FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dlm_lock_resource*,struct dlm_master_list_entry*,int) ; 
 int FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct dlm_ctxt *dlm,
				     struct dlm_lock_resource *res,
				     struct dlm_master_list_entry *mle,
				     int *blocked)
{
	u8 m;
	int ret, bit;
	int map_changed, voting_done;
	int assert, sleep;

recheck:
	ret = 0;
	assert = 0;

	/* check if another node has already become the owner */
	FUNC12(&res->spinlock);
	if (res->owner != DLM_LOCK_RES_OWNER_UNKNOWN) {
		FUNC8(0, "%s:%.*s: owner is suddenly %u\n", dlm->name,
		     res->lockname.len, res->lockname.name, res->owner);
		FUNC13(&res->spinlock);
		/* this will cause the master to re-assert across
		 * the whole cluster, freeing up mles */
		if (res->owner != dlm->node_num) {
			ret = FUNC4(res, mle, res->owner);
			if (ret < 0) {
				/* give recovery a chance to run */
				FUNC8(ML_ERROR, "link to %u went down?: %d\n", res->owner, ret);
				FUNC11(500);
				goto recheck;
			}
		}
		ret = 0;
		goto leave;
	}
	FUNC13(&res->spinlock);

	FUNC12(&mle->spinlock);
	m = mle->master;
	map_changed = (FUNC7(mle->vote_map, mle->node_map,
			      sizeof(mle->vote_map)) != 0);
	voting_done = (FUNC7(mle->vote_map, mle->response_map,
			     sizeof(mle->vote_map)) == 0);

	/* restart if we hit any errors */
	if (map_changed) {
		int b;
		FUNC8(0, "%s: %.*s: node map changed, restarting\n",
		     dlm->name, res->lockname.len, res->lockname.name);
		ret = FUNC5(dlm, res, mle, *blocked);
		b = (mle->type == DLM_MLE_BLOCK);
		if ((*blocked && !b) || (!*blocked && b)) {
			FUNC8(0, "%s:%.*s: status change: old=%d new=%d\n", 
			     dlm->name, res->lockname.len, res->lockname.name,
			     *blocked, b);
			*blocked = b;
		}
		FUNC13(&mle->spinlock);
		if (ret < 0) {
			FUNC9(ret);
			goto leave;
		}
		FUNC8(0, "%s:%.*s: restart lock mastery succeeded, "
		     "rechecking now\n", dlm->name, res->lockname.len,
		     res->lockname.name);
		goto recheck;
	} else {
		if (!voting_done) {
			FUNC8(0, "map not changed and voting not done "
			     "for %s:%.*s\n", dlm->name, res->lockname.len,
			     res->lockname.name);
		}
	}

	if (m != O2NM_MAX_NODES) {
		/* another node has done an assert!
		 * all done! */
		sleep = 0;
	} else {
		sleep = 1;
		/* have all nodes responded? */
		if (voting_done && !*blocked) {
			bit = FUNC6(mle->maybe_map, O2NM_MAX_NODES, 0);
			if (dlm->node_num <= bit) {
				/* my node number is lowest.
			 	 * now tell other nodes that I am
				 * mastering this. */
				mle->master = dlm->node_num;
				/* ref was grabbed in get_lock_resource
				 * will be dropped in dlmlock_master */
				assert = 1;
				sleep = 0;
			}
			/* if voting is done, but we have not received
			 * an assert master yet, we must sleep */
		}
	}

	FUNC13(&mle->spinlock);

	/* sleep if we haven't finished voting yet */
	if (sleep) {
		unsigned long timeo = FUNC10(DLM_MASTERY_TIMEOUT_MS);

		/*
		if (atomic_read(&mle->mle_refs.refcount) < 2)
			mlog(ML_ERROR, "mle (%p) refs=%d, name=%.*s\n", mle,
			atomic_read(&mle->mle_refs.refcount),
			res->lockname.len, res->lockname.name);
		*/
		FUNC1(&mle->woken, 0);
		(void)FUNC14(mle->wq,
					 (FUNC0(&mle->woken) == 1),
					 timeo);
		if (res->owner == O2NM_MAX_NODES) {
			FUNC8(0, "%s:%.*s: waiting again\n", dlm->name,
			     res->lockname.len, res->lockname.name);
			goto recheck;
		}
		FUNC8(0, "done waiting, master is %u\n", res->owner);
		ret = 0;
		goto leave;
	}

	ret = 0;   /* done */
	if (assert) {
		m = dlm->node_num;
		FUNC8(0, "about to master %.*s here, this=%u\n",
		     res->lockname.len, res->lockname.name, m);
		ret = FUNC3(dlm, res, mle->vote_map, 0);
		if (ret) {
			/* This is a failure in the network path,
			 * not in the response to the assert_master
			 * (any nonzero response is a BUG on this node).
			 * Most likely a socket just got disconnected
			 * due to node death. */
			FUNC9(ret);
		}
		/* no longer need to restart lock mastery.
		 * all living nodes have been contacted. */
		ret = 0;
	}

	/* set the lockres owner */
	FUNC12(&res->spinlock);
	/* mastery reference obtained either during
	 * assert_master_handler or in get_lock_resource */
	FUNC2(dlm, res, m);
	FUNC13(&res->spinlock);

leave:
	return ret;
}