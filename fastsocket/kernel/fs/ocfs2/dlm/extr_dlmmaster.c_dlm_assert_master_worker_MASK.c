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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int ignore_higher; int request_from; int /*<<< orphan*/  flags; struct dlm_lock_resource* lockres; } ;
struct TYPE_5__ {TYPE_1__ am; } ;
struct dlm_work_item {TYPE_2__ u; struct dlm_ctxt* dlm; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int state; TYPE_3__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;
typedef  int /*<<< orphan*/  nodemap ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int FUNC7 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct dlm_work_item *item, void *data)
{
	struct dlm_ctxt *dlm = data;
	int ret = 0;
	struct dlm_lock_resource *res;
	unsigned long nodemap[FUNC0(O2NM_MAX_NODES)];
	int ignore_higher;
	int bit;
	u8 request_from;
	u32 flags;

	dlm = item->dlm;
	res = item->u.am.lockres;
	ignore_higher = item->u.am.ignore_higher;
	request_from = item->u.am.request_from;
	flags = item->u.am.flags;

	FUNC11(&dlm->spinlock);
	FUNC8(nodemap, dlm->domain_map, sizeof(nodemap));
	FUNC12(&dlm->spinlock);

	FUNC2(dlm->node_num, nodemap);
	if (ignore_higher) {
		/* if is this just to clear up mles for nodes below
		 * this node, do not send the message to the original
		 * caller or any node number higher than this */
		FUNC2(request_from, nodemap);
		bit = dlm->node_num;
		while (1) {
			bit = FUNC7(nodemap, O2NM_MAX_NODES,
					    bit+1);
		       	if (bit >= O2NM_MAX_NODES)
				break;
			FUNC2(bit, nodemap);
		}
	}

	/*
	 * If we're migrating this lock to someone else, we are no
	 * longer allowed to assert out own mastery.  OTOH, we need to
	 * prevent migration from starting while we're still asserting
	 * our dominance.  The reserved ast delays migration.
	 */
	FUNC11(&res->spinlock);
	if (res->state & DLM_LOCK_RES_MIGRATING) {
		FUNC9(0, "Someone asked us to assert mastery, but we're "
		     "in the middle of migration.  Skipping assert, "
		     "the new master will handle that.\n");
		FUNC12(&res->spinlock);
		goto put;
	} else
		FUNC1(res);
	FUNC12(&res->spinlock);

	/* this call now finishes out the nodemap
	 * even if one or more nodes die */
	FUNC9(0, "worker about to master %.*s here, this=%u\n",
		     res->lockname.len, res->lockname.name, dlm->node_num);
	ret = FUNC3(dlm, res, nodemap, flags);
	if (ret < 0) {
		/* no need to restart, we are done */
		if (!FUNC4(ret))
			FUNC10(ret);
	}

	/* Ok, we've asserted ourselves.  Let's let migration start. */
	FUNC6(dlm, res);

put:
	FUNC5(res);

	FUNC9(0, "finished with dlm_assert_master_worker\n");
}