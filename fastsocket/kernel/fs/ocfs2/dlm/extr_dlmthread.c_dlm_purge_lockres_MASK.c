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
struct TYPE_2__ {struct dlm_lock_resource* name; struct dlm_lock_resource* len; } ;
struct dlm_lock_resource {int state; scalar_t__ owner; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  purge; TYPE_1__ lockname; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  purge_count; int /*<<< orphan*/  spinlock; struct dlm_lock_resource* name; int /*<<< orphan*/  purge_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DLM_LOCK_RES_DROPPING_REF ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  DLM_LOCK_RES_SETREF_INPROG ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct dlm_lock_resource*,struct dlm_lock_resource*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct dlm_ctxt *dlm,
			     struct dlm_lock_resource *res)
{
	int master;
	int ret = 0;

	FUNC13(&res->spinlock);
	if (!FUNC1(res)) {
		FUNC11(0, "%s:%.*s: tried to purge but not unused\n",
		     dlm->name, res->lockname.len, res->lockname.name);
		FUNC2(res);
		FUNC14(&res->spinlock);
		FUNC0();
	}

	if (res->state & DLM_LOCK_RES_MIGRATING) {
		FUNC11(0, "%s:%.*s: Delay dropref as this lockres is "
		     "being remastered\n", dlm->name, res->lockname.len,
		     res->lockname.name);
		/* Re-add the lockres to the end of the purge list */
		if (!FUNC10(&res->purge)) {
			FUNC9(&res->purge);
			FUNC8(&res->purge, &dlm->purge_list);
		}
		FUNC14(&res->spinlock);
		return 0;
	}

	master = (res->owner == dlm->node_num);

	if (!master)
		res->state |= DLM_LOCK_RES_DROPPING_REF;
	FUNC14(&res->spinlock);

	FUNC11(0, "purging lockres %.*s, master = %d\n", res->lockname.len,
	     res->lockname.name, master);

	if (!master) {
		/* drop spinlock...  retake below */
		FUNC14(&dlm->spinlock);

		FUNC13(&res->spinlock);
		/* This ensures that clear refmap is sent after the set */
		FUNC4(res, DLM_LOCK_RES_SETREF_INPROG);
		FUNC14(&res->spinlock);

		/* clear our bit from the master's refmap, ignore errors */
		ret = FUNC5(dlm, res);
		if (ret < 0) {
			FUNC12(ret);
			if (!FUNC6(ret))
				FUNC0();
		}
		FUNC11(0, "%s:%.*s: dlm_deref_lockres returned %d\n",
		     dlm->name, res->lockname.len, res->lockname.name, ret);
		FUNC13(&dlm->spinlock);
	}

	FUNC13(&res->spinlock);
	if (!FUNC10(&res->purge)) {
		FUNC11(0, "removing lockres %.*s:%p from purgelist, "
		     "master = %d\n", res->lockname.len, res->lockname.name,
		     res, master);
		FUNC9(&res->purge);
		FUNC14(&res->spinlock);
		FUNC7(res);
		dlm->purge_count--;
	} else
		FUNC14(&res->spinlock);

	FUNC3(res);

	/* lockres is not in the hash now.  drop the flag and wake up
	 * any processes waiting in dlm_get_lock_resource. */
	if (!master) {
		FUNC13(&res->spinlock);
		res->state &= ~DLM_LOCK_RES_DROPPING_REF;
		FUNC14(&res->spinlock);
		FUNC15(&res->wq);
	}
	return 0;
}