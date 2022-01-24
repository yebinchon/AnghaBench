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
struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_pages; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  balloon_mutex ; 
 TYPE_1__ balloon_stats ; 
 int /*<<< orphan*/  balloon_timer ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (long) ; 
 scalar_t__ FUNC2 (long) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct work_struct *work)
{
	int need_sleep = 0;
	long credit;

	FUNC4(&balloon_mutex);

	do {
		credit = FUNC0() - balloon_stats.current_pages;
		if (credit > 0)
			need_sleep = (FUNC2(credit) != 0);
		if (credit < 0)
			need_sleep = (FUNC1(-credit) != 0);

#ifndef CONFIG_PREEMPT
		if (FUNC6())
			FUNC7();
#endif
	} while ((credit != 0) && !need_sleep);

	/* Schedule more work if there is some still to be done. */
	if (FUNC0() != balloon_stats.current_pages)
		FUNC3(&balloon_timer, jiffies + HZ);

	FUNC5(&balloon_mutex);
}