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
struct dlm_lock_resource {scalar_t__ inflight_locks; int /*<<< orphan*/  wq; TYPE_1__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  node_num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dlm_ctxt *dlm,
				   struct dlm_lock_resource *res,
				   const char *file,
				   int line)
{
	FUNC1(&res->spinlock);

	FUNC0(res->inflight_locks == 0);
	res->inflight_locks--;
	FUNC3(0, "%s:%.*s: inflight--: now %u\n",
	     dlm->name, res->lockname.len, res->lockname.name,
	     res->inflight_locks);
	if (res->inflight_locks == 0)
		FUNC2(dlm->node_num, res);
	FUNC4(&res->wq);
}