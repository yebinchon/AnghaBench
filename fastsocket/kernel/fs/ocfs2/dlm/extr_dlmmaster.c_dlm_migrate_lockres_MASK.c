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
struct dlm_migratable_lockres {int dummy; } ;
struct dlm_master_list_entry {int /*<<< orphan*/  woken; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {unsigned int len; int /*<<< orphan*/  name; } ;
struct dlm_lock_resource {scalar_t__ owner; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; int /*<<< orphan*/  dlm_worker; int /*<<< orphan*/  node_num; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  DLM_MRES_MIGRATION ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ O2NM_MAX_NODES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_master_list_entry*,struct dlm_master_list_entry**,char const*,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*,int*) ; 
 scalar_t__ FUNC6 (struct dlm_ctxt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 scalar_t__ FUNC9 (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ; 
 int /*<<< orphan*/  dlm_mle_cache ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 scalar_t__ FUNC11 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int FUNC16 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_migratable_lockres*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct dlm_ctxt *dlm,
			       struct dlm_lock_resource *res,
			       u8 target)
{
	struct dlm_master_list_entry *mle = NULL;
	struct dlm_master_list_entry *oldmle = NULL;
 	struct dlm_migratable_lockres *mres = NULL;
	int ret = 0;
	const char *name;
	unsigned int namelen;
	int mle_added = 0;
	int numlocks;
	int wake = 0;

	if (!FUNC4(dlm))
		return -EINVAL;

	name = res->lockname.name;
	namelen = res->lockname.len;

	FUNC22(0, "migrating %.*s to %u\n", namelen, name, target);

	/*
	 * ensure this lockres is a proper candidate for migration
	 */
	FUNC25(&res->spinlock);
	ret = FUNC5(dlm, res, &numlocks);
	if (ret < 0) {
		FUNC26(&res->spinlock);
		goto leave;
	}
	FUNC26(&res->spinlock);

	/* no work to do */
	if (numlocks == 0) {
		FUNC22(0, "no locks were found on this lockres! done!\n");
		goto leave;
	}

	/*
	 * preallocate up front
	 * if this fails, abort
	 */

	ret = -ENOMEM;
	mres = (struct dlm_migratable_lockres *) FUNC0(GFP_NOFS);
	if (!mres) {
		FUNC23(ret);
		goto leave;
	}

	mle = (struct dlm_master_list_entry *) FUNC20(dlm_mle_cache,
								GFP_NOFS);
	if (!mle) {
		FUNC23(ret);
		goto leave;
	}
	ret = 0;

	/*
	 * find a node to migrate the lockres to
	 */

	FUNC22(0, "picking a migration node\n");
	FUNC25(&dlm->spinlock);
	/* pick a new node */
	if (!FUNC27(target, dlm->domain_map) ||
	    target >= O2NM_MAX_NODES) {
		target = FUNC11(dlm, res);
	}
	FUNC22(0, "node %u chosen for migration\n", target);

	if (target >= O2NM_MAX_NODES ||
	    !FUNC27(target, dlm->domain_map)) {
		/* target chosen is not alive */
		ret = -EINVAL;
	}

	if (ret) {
		FUNC26(&dlm->spinlock);
		goto fail;
	}

	FUNC22(0, "continuing with target = %u\n", target);

	/*
	 * clear any existing master requests and
	 * add the migration mle to the list
	 */
	FUNC25(&dlm->master_lock);
	ret = FUNC2(dlm, res, mle, &oldmle, name,
				    namelen, target, dlm->node_num);
	FUNC26(&dlm->master_lock);
	FUNC26(&dlm->spinlock);

	if (ret == -EEXIST) {
		FUNC22(0, "another process is already migrating it\n");
		goto fail;
	}
	mle_added = 1;

	/*
	 * set the MIGRATING flag and flush asts
	 * if we fail after this we need to re-dirty the lockres
	 */
	if (FUNC9(dlm, res, target) < 0) {
		FUNC22(ML_ERROR, "tried to migrate %.*s to %u, but "
		     "the target went down.\n", res->lockname.len,
		     res->lockname.name, target);
		FUNC25(&res->spinlock);
		res->state &= ~DLM_LOCK_RES_MIGRATING;
		wake = 1;
		FUNC26(&res->spinlock);
		ret = -EINVAL;
	}

fail:
	if (oldmle) {
		/* master is known, detach if not already detached */
		FUNC10(dlm, oldmle);
		FUNC13(oldmle);
	}

	if (ret < 0) {
		if (mle_added) {
			FUNC10(dlm, mle);
			FUNC13(mle);
		} else if (mle) {
			FUNC21(dlm_mle_cache, mle);
		}
		goto leave;
	}

	/*
	 * at this point, we have a migration target, an mle
	 * in the master list, and the MIGRATING flag set on
	 * the lockres
	 */

	/* now that remote nodes are spinning on the MIGRATING flag,
	 * ensure that all assert_master work is flushed. */
	FUNC18(dlm->dlm_worker);

	/* get an extra reference on the mle.
	 * otherwise the assert_master from the new
	 * master will destroy this.
	 * also, make sure that all callers of dlm_get_mle
	 * take both dlm->spinlock and dlm->master_lock */
	FUNC25(&dlm->spinlock);
	FUNC25(&dlm->master_lock);
	FUNC3(mle);
	FUNC26(&dlm->master_lock);
	FUNC26(&dlm->spinlock);

	/* notify new node and send all lock state */
	/* call send_one_lockres with migration flag.
	 * this serves as notice to the target node that a
	 * migration is starting. */
	ret = FUNC16(dlm, res, mres, target,
				   DLM_MRES_MIGRATION);

	if (ret < 0) {
		FUNC22(0, "migration to node %u failed with %d\n",
		     target, ret);
		/* migration failed, detach and clean up mle */
		FUNC10(dlm, mle);
		FUNC13(mle);
		FUNC14(mle);
		FUNC25(&res->spinlock);
		res->state &= ~DLM_LOCK_RES_MIGRATING;
		wake = 1;
		FUNC26(&res->spinlock);
		goto leave;
	}

	/* at this point, the target sends a message to all nodes,
	 * (using dlm_do_migrate_request).  this node is skipped since
	 * we had to put an mle in the list to begin the process.  this
	 * node now waits for target to do an assert master.  this node
	 * will be the last one notified, ensuring that the migration
	 * is complete everywhere.  if the target dies while this is
	 * going on, some nodes could potentially see the target as the
	 * master, so it is important that my recovery finds the migration
	 * mle and sets the master to UNKNONWN. */


	/* wait for new node to assert master */
	while (1) {
		ret = FUNC28(mle->wq,
					(FUNC1(&mle->woken) == 1),
					FUNC24(5000));

		if (ret >= 0) {
		       	if (FUNC1(&mle->woken) == 1 ||
			    res->owner == target)
				break;

			FUNC22(0, "%s:%.*s: timed out during migration\n",
			     dlm->name, res->lockname.len, res->lockname.name);
			/* avoid hang during shutdown when migrating lockres 
			 * to a node which also goes down */
			if (FUNC6(dlm, target)) {
				FUNC22(0, "%s:%.*s: expected migration "
				     "target %u is no longer up, restarting\n",
				     dlm->name, res->lockname.len,
				     res->lockname.name, target);
				ret = -EINVAL;
				/* migration failed, detach and clean up mle */
				FUNC10(dlm, mle);
				FUNC13(mle);
				FUNC14(mle);
				FUNC25(&res->spinlock);
				res->state &= ~DLM_LOCK_RES_MIGRATING;
				wake = 1;
				FUNC26(&res->spinlock);
				goto leave;
			}
		} else
			FUNC22(0, "%s:%.*s: caught signal during migration\n",
			     dlm->name, res->lockname.len, res->lockname.name);
	}

	/* all done, set the owner, clear the flag */
	FUNC25(&res->spinlock);
	FUNC17(dlm, res, target);
	res->state &= ~DLM_LOCK_RES_MIGRATING;
	FUNC15(dlm, res);
	FUNC26(&res->spinlock);
	FUNC29(&res->wq);

	/* master is known, detach if not already detached */
	FUNC10(dlm, mle);
	FUNC14(mle);
	ret = 0;

	FUNC8(dlm, res);

leave:
	/* re-dirty the lockres if we failed */
	if (ret < 0)
		FUNC7(dlm, res);

	/* wake up waiters if the MIGRATING flag got set
	 * but migration failed */
	if (wake)
		FUNC29(&res->wq);

	/* TODO: cleanup */
	if (mres)
		FUNC19((unsigned long)mres);

	FUNC12(dlm);

	FUNC22(0, "returning %d\n", ret);
	return ret;
}