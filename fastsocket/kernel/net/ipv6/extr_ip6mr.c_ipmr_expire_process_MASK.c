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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  ipmr_expire_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mfc_unres_lock ; 
 int /*<<< orphan*/ * mfc_unres_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long dummy)
{
	if (!FUNC2(&mfc_unres_lock)) {
		FUNC1(&ipmr_expire_timer, jiffies + 1);
		return;
	}

	if (mfc_unres_queue != NULL)
		FUNC0(dummy);

	FUNC3(&mfc_unres_lock);
}