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
struct dlm_lock_resource {int /*<<< orphan*/  purge; int /*<<< orphan*/  owner; TYPE_1__ lockname; int /*<<< orphan*/  last_used; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  purge_count; int /*<<< orphan*/  purge_list; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_lock_resource*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct dlm_ctxt *dlm,
			      struct dlm_lock_resource *res)
{
	FUNC8("%.*s\n", res->lockname.len, res->lockname.name);

	FUNC1(&dlm->spinlock);
	FUNC1(&res->spinlock);

	if (FUNC0(res)){
		if (FUNC6(&res->purge)) {
			FUNC7(0, "putting lockres %.*s:%p onto purge list\n",
			     res->lockname.len, res->lockname.name, res);

			res->last_used = jiffies;
			FUNC2(res);
			FUNC4(&res->purge, &dlm->purge_list);
			dlm->purge_count++;
		}
	} else if (!FUNC6(&res->purge)) {
		FUNC7(0, "removing lockres %.*s:%p from purge list, owner=%u\n",
		     res->lockname.len, res->lockname.name, res, res->owner);

		FUNC5(&res->purge);
		FUNC3(res);
		dlm->purge_count--;
	}
}