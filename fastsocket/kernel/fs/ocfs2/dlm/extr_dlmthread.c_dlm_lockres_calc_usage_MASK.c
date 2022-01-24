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
struct dlm_lock_resource {int /*<<< orphan*/  spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dlm_ctxt *dlm,
			    struct dlm_lock_resource *res)
{
	FUNC1("%.*s\n", res->lockname.len, res->lockname.name);
	FUNC2(&dlm->spinlock);
	FUNC2(&res->spinlock);

	FUNC0(dlm, res);

	FUNC3(&res->spinlock);
	FUNC3(&dlm->spinlock);
}