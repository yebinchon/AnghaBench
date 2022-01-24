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
struct TYPE_4__ {int deref_node; struct dlm_lock_resource* deref_res; } ;
struct TYPE_5__ {TYPE_1__ dl; } ;
struct dlm_work_item {TYPE_2__ u; struct dlm_ctxt* dlm; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int state; TYPE_3__ lockname; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  refmap; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_RES_DROPPING_REF ; 
 int /*<<< orphan*/  DLM_LOCK_RES_SETREF_INPROG ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct dlm_work_item *item, void *data)
{
	struct dlm_ctxt *dlm;
	struct dlm_lock_resource *res;
	u8 node;
	u8 cleared = 0;

	dlm = item->dlm;
	res = item->u.dl.deref_res;
	node = item->u.dl.deref_node;

	FUNC7(&res->spinlock);
	FUNC0(res->state & DLM_LOCK_RES_DROPPING_REF);
	if (FUNC9(node, res->refmap)) {
		FUNC1(res, DLM_LOCK_RES_SETREF_INPROG);
		FUNC3(node, res);
		cleared = 1;
	}
	FUNC8(&res->spinlock);

	if (cleared) {
		FUNC6(0, "%s:%.*s node %u ref dropped in dispatch\n",
		     dlm->name, res->lockname.len, res->lockname.name, node);
		FUNC2(dlm, res);
	} else {
		FUNC6(ML_ERROR, "%s:%.*s: node %u trying to drop ref "
		     "but it is already dropped!\n", dlm->name,
		     res->lockname.len, res->lockname.name, node);
		FUNC5(res);
	}

	FUNC4(res);
}