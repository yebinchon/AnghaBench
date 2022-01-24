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
typedef  int /*<<< orphan*/  u8 ;
struct dlm_lock_resource {int state; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dlm_ctxt *dlm,
				     struct dlm_lock_resource *res,
				     u8 mig_target)
{
	int can_proceed;
	FUNC0(&res->spinlock);
	can_proceed = !!(res->state & DLM_LOCK_RES_MIGRATING);
	FUNC1(&res->spinlock);

	/* target has died, so make the caller break out of the 
	 * wait_event, but caller must recheck the domain_map */
	FUNC0(&dlm->spinlock);
	if (!FUNC2(mig_target, dlm->domain_map))
		can_proceed = 1;
	FUNC1(&dlm->spinlock);
	return can_proceed;
}