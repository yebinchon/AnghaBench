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
struct se_tmr_req {int /*<<< orphan*/  tmr_list; struct se_device* tmr_dev; } ;
struct se_device {int /*<<< orphan*/  se_tmr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_tmr_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(
	struct se_tmr_req *tmr)
{
	struct se_device *dev = tmr->tmr_dev;
	unsigned long flags;

	if (!dev) {
		FUNC0(tmr);
		return;
	}

	FUNC2(&dev->se_tmr_lock, flags);
	FUNC1(&tmr->tmr_list);
	FUNC3(&dev->se_tmr_lock, flags);

	FUNC0(tmr);
}