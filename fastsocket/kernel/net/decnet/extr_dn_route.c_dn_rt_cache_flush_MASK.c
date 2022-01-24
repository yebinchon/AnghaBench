#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 unsigned long dn_rt_deadline ; 
 int /*<<< orphan*/  dn_rt_flush_lock ; 
 TYPE_1__ dn_rt_flush_timer ; 
 long dn_rt_max_delay ; 
 long dn_rt_min_delay ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(int delay)
{
	unsigned long now = jiffies;
	int user_mode = !FUNC3();

	if (delay < 0)
		delay = dn_rt_min_delay;

	FUNC4(&dn_rt_flush_lock);

	if (FUNC1(&dn_rt_flush_timer) && delay > 0 && dn_rt_deadline) {
		long tmo = (long)(dn_rt_deadline - now);

		if (user_mode && tmo < dn_rt_max_delay - dn_rt_min_delay)
			tmo = 0;

		if (delay > tmo)
			delay = tmo;
	}

	if (delay <= 0) {
		FUNC5(&dn_rt_flush_lock);
		FUNC2(0);
		return;
	}

	if (dn_rt_deadline == 0)
		dn_rt_deadline = now + dn_rt_max_delay;

	dn_rt_flush_timer.expires = now + delay;
	FUNC0(&dn_rt_flush_timer);
	FUNC5(&dn_rt_flush_lock);
}