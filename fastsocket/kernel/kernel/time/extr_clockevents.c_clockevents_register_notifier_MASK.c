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

/* Variables and functions */
 int /*<<< orphan*/  clockevents_chain ; 
 int /*<<< orphan*/  clockevents_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct notifier_block *nb)
{
	unsigned long flags;
	int ret;

	FUNC1(&clockevents_lock, flags);
	ret = FUNC0(&clockevents_chain, nb);
	FUNC2(&clockevents_lock, flags);

	return ret;
}