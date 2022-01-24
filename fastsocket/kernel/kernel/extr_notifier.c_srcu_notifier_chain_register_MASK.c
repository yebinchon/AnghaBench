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
struct srcu_notifier_head {int /*<<< orphan*/  mutex; int /*<<< orphan*/  head; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ SYSTEM_BOOTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 scalar_t__ system_state ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct srcu_notifier_head *nh,
		struct notifier_block *n)
{
	int ret;

	/*
	 * This code gets used during boot-up, when task switching is
	 * not yet working and interrupts must remain disabled.  At
	 * such times we must not call mutex_lock().
	 */
	if (FUNC3(system_state == SYSTEM_BOOTING))
		return FUNC2(&nh->head, n);

	FUNC0(&nh->mutex);
	ret = FUNC2(&nh->head, n);
	FUNC1(&nh->mutex);
	return ret;
}