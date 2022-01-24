#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ real_master; scalar_t__ extra_ref; struct dlm_lock_resource* lockres; } ;
struct TYPE_5__ {TYPE_1__ ml; } ;
struct dlm_work_item {TYPE_2__ u; struct dlm_ctxt* dlm; } ;
struct dlm_migratable_lockres {int flags; int /*<<< orphan*/  master; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_3__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_MRES_ALL_DONE ; 
 int DLM_MRES_MIGRATION ; 
 int FUNC0 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 int FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_migratable_lockres*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct dlm_work_item *item, void *data)
{
	struct dlm_ctxt *dlm;
	struct dlm_migratable_lockres *mres;
	int ret = 0;
	struct dlm_lock_resource *res;
	u8 real_master;
	u8 extra_ref;

	dlm = item->dlm;
	mres = (struct dlm_migratable_lockres *)data;

	res = item->u.ml.lockres;
	real_master = item->u.ml.real_master;
	extra_ref = item->u.ml.extra_ref;

	if (real_master == DLM_LOCK_RES_OWNER_UNKNOWN) {
		/* this case is super-rare. only occurs if
		 * node death happens during migration. */
again:
		ret = FUNC2(dlm, res, &real_master);
		if (ret < 0) {
			FUNC6(0, "dlm_lockres_master_requery ret=%d\n",
				  ret);
			goto again;
		}
		if (real_master == DLM_LOCK_RES_OWNER_UNKNOWN) {
			FUNC6(0, "lockres %.*s not claimed.  "
				   "this node will take it.\n",
				   res->lockname.len, res->lockname.name);
		} else {
			FUNC9(&res->spinlock);
			FUNC1(dlm, res);
			FUNC10(&res->spinlock);
			FUNC6(0, "master needs to respond to sender "
				  "that node %u still owns %.*s\n",
				  real_master, res->lockname.len,
				  res->lockname.name);
			/* cannot touch this lockres */
			goto leave;
		}
	}

	ret = FUNC4(dlm, res, mres);
	if (ret < 0)
		FUNC6(0, "dlm_process_recovery_data returned  %d\n", ret);
	else
		FUNC6(0, "dlm_process_recovery_data succeeded\n");

	if ((mres->flags & (DLM_MRES_MIGRATION|DLM_MRES_ALL_DONE)) ==
	                   (DLM_MRES_MIGRATION|DLM_MRES_ALL_DONE)) {
		ret = FUNC0(dlm, res, mres->master);
		if (ret < 0)
			FUNC7(ret);
	}

leave:
	/* See comment in dlm_mig_lockres_handler() */
	if (res) {
		if (extra_ref)
			FUNC3(res);
		FUNC3(res);
	}
	FUNC5(data);
	FUNC8(ret);
}