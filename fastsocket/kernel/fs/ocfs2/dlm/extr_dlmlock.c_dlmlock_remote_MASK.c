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
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dlm_lock_resource {int owner; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  granted; TYPE_2__ lockname; int /*<<< orphan*/  state; int /*<<< orphan*/  blocked; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct dlm_lock {int lock_pending; int /*<<< orphan*/  list; TYPE_1__ ml; } ;
struct dlm_ctxt {int /*<<< orphan*/  node_num; int /*<<< orphan*/  name; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;

/* Variables and functions */
 int DLM_DENIED ; 
 int /*<<< orphan*/  DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int DLM_RECOVERING ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_lock_resource*,struct dlm_lock*) ; 
 int FUNC7 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum dlm_status FUNC15(struct dlm_ctxt *dlm,
				      struct dlm_lock_resource *res,
				      struct dlm_lock *lock, int flags)
{
	enum dlm_status status = DLM_DENIED;
	int lockres_changed = 1;

	FUNC11("type=%d\n", lock->ml.type);
	FUNC10(0, "lockres %.*s, flags = 0x%x\n", res->lockname.len,
	     res->lockname.name, flags);

	FUNC12(&res->spinlock);

	/* will exit this call with spinlock held */
	FUNC0(res);
	res->state |= DLM_LOCK_RES_IN_PROGRESS;

	/* add lock to local (secondary) queue */
	FUNC3(lock);
	FUNC8(&lock->list, &res->blocked);
	lock->lock_pending = 1;
	FUNC13(&res->spinlock);

	/* spec seems to say that you will get DLM_NORMAL when the lock
	 * has been queued, meaning we need to wait for a reply here. */
	status = FUNC7(dlm, res, lock, flags);

	FUNC12(&res->spinlock);
	res->state &= ~DLM_LOCK_RES_IN_PROGRESS;
	lock->lock_pending = 0;
	if (status != DLM_NORMAL) {
		if (status == DLM_RECOVERING &&
		    FUNC2(res->lockname.name,
					 res->lockname.len)) {
			/* recovery lock was mastered by dead node.
			 * we need to have calc_usage shoot down this
			 * lockres and completely remaster it. */
			FUNC10(0, "%s: recovery lock was owned by "
			     "dead node %u, remaster it now.\n",
			     dlm->name, res->owner);
		} else if (status != DLM_NOTQUEUED) {
			/*
			 * DO NOT call calc_usage, as this would unhash
			 * the remote lockres before we ever get to use
			 * it.  treat as if we never made any change to
			 * the lockres.
			 */
			lockres_changed = 0;
			FUNC1(status);
		}
		FUNC6(res, lock);
		FUNC4(lock);
	} else if (FUNC2(res->lockname.name, 
					res->lockname.len)) {
		/* special case for the $RECOVERY lock.
		 * there will never be an AST delivered to put
		 * this lock on the proper secondary queue
		 * (granted), so do it manually. */
		FUNC10(0, "%s: $RECOVERY lock for this node (%u) is "
		     "mastered by %u; got lock, manually granting (no ast)\n",
		     dlm->name, dlm->node_num, res->owner);
		FUNC9(&lock->list, &res->granted);
	}
	FUNC13(&res->spinlock);

	if (lockres_changed)
		FUNC5(dlm, res);

	FUNC14(&res->wq);
	return status;
}