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
struct dlm_master_list_entry {int /*<<< orphan*/  mnamehash; int /*<<< orphan*/  mnamelen; int /*<<< orphan*/  mname; } ;
struct dlm_lock_resource {int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  master_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 struct dlm_lock_resource* FUNC0 (struct dlm_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dlm_lock_resource *FUNC8(struct dlm_ctxt *dlm,
					struct dlm_master_list_entry *mle)
{
	struct dlm_lock_resource *res;

	/* Find the lockres associated to the mle and set its owner to UNK */
	res = FUNC0(dlm, mle->mname, mle->mnamelen,
				   mle->mnamehash);
	if (res) {
		FUNC7(&dlm->master_lock);

		/* move lockres onto recovery list */
		FUNC6(&res->spinlock);
		FUNC5(dlm, res, DLM_LOCK_RES_OWNER_UNKNOWN);
		FUNC4(dlm, res);
		FUNC7(&res->spinlock);
		FUNC3(res);

		/* about to get rid of mle, detach from heartbeat */
		FUNC1(dlm, mle);

		/* dump the mle */
		FUNC6(&dlm->master_lock);
		FUNC2(mle);
		FUNC7(&dlm->master_lock);
	}

	return res;
}