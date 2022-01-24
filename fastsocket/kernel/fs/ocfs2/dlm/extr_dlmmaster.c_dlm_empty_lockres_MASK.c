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
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {scalar_t__ owner; TYPE_1__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_MIGRATION_RETRY_MS ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,int*) ; 
 int FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	int ret;
	int lock_dropped = 0;
	int numlocks;

	FUNC6(&res->spinlock);
	if (res->owner != dlm->node_num) {
		if (!FUNC1(res)) {
			FUNC4(ML_ERROR, "%s:%.*s: this node is not master, "
			     "trying to free this but locks remain\n",
			     dlm->name, res->lockname.len, res->lockname.name);
		}
		FUNC7(&res->spinlock);
		goto leave;
	}

	/* No need to migrate a lockres having no locks */
	ret = FUNC2(dlm, res, &numlocks);
	if (ret >= 0 && numlocks == 0) {
		FUNC7(&res->spinlock);
		goto leave;
	}
	FUNC7(&res->spinlock);

	/* Wheee! Migrate lockres here! Will sleep so drop spinlock. */
	FUNC7(&dlm->spinlock);
	lock_dropped = 1;
	while (1) {
		ret = FUNC3(dlm, res, O2NM_MAX_NODES);
		if (ret >= 0)
			break;
		if (ret == -ENOTEMPTY) {
			FUNC4(ML_ERROR, "lockres %.*s still has local locks!\n",
		     		res->lockname.len, res->lockname.name);
			FUNC0();
		}

		FUNC4(0, "lockres %.*s: migrate failed, "
		     "retrying\n", res->lockname.len,
		     res->lockname.name);
		FUNC5(DLM_MIGRATION_RETRY_MS);
	}
	FUNC6(&dlm->spinlock);
leave:
	return lock_dropped;
}