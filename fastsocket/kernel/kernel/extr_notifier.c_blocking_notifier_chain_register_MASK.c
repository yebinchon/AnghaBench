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
struct notifier_block {int dummy; } ;
struct blocking_notifier_head {int /*<<< orphan*/  rwsem; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_BOOTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 scalar_t__ system_state ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct blocking_notifier_head *nh,
		struct notifier_block *n)
{
	int ret;

	/*
	 * This code gets used during boot-up, when task switching is
	 * not yet working and interrupts must remain disabled.  At
	 * such times we must not call down_write().
	 */
	if (FUNC2(system_state == SYSTEM_BOOTING))
		return FUNC1(&nh->head, n);

	FUNC0(&nh->rwsem);
	ret = FUNC1(&nh->head, n);
	FUNC3(&nh->rwsem);
	return ret;
}