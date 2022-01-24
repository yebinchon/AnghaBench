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
struct dlm_lockstatus {int flags; int /*<<< orphan*/  lvb; } ;
struct dlm_lock_resource {scalar_t__ owner; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  lvb; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LKSB_GET_LVB ; 
 int DLM_LKSB_PUT_LVB ; 
 int /*<<< orphan*/  DLM_LVB_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
			   struct dlm_lock *lock)
{
	struct dlm_lockstatus *lksb = lock->lksb;
	FUNC0(!lksb);

	/* only updates if this node masters the lockres */
	if (res->owner == dlm->node_num) {

		FUNC3(&res->spinlock);
		/* check the lksb flags for the direction */
		if (lksb->flags & DLM_LKSB_GET_LVB) {
			FUNC2(0, "getting lvb from lockres for %s node\n",
				  lock->ml.node == dlm->node_num ? "master" :
				  "remote");
			FUNC1(lksb->lvb, res->lvb, DLM_LVB_LEN);
		}
		/* Do nothing for lvb put requests - they should be done in
 		 * place when the lock is downconverted - otherwise we risk
 		 * racing gets and puts which could result in old lvb data
 		 * being propagated. We leave the put flag set and clear it
 		 * here. In the future we might want to clear it at the time
 		 * the put is actually done.
		 */
		FUNC4(&res->spinlock);
	}

	/* reset any lvb flags on the lksb */
	lksb->flags &= ~(DLM_LKSB_PUT_LVB|DLM_LKSB_GET_LVB);
}