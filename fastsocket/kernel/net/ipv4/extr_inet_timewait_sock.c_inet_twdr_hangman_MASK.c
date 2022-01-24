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
struct inet_timewait_death_row {scalar_t__ tw_count; int slot; int thread_slots; int /*<<< orphan*/  death_lock; scalar_t__ period; int /*<<< orphan*/  tw_timer; int /*<<< orphan*/  twkill_work; } ;

/* Variables and functions */
 int INET_TWDR_TWKILL_SLOTS ; 
 scalar_t__ FUNC0 (struct inet_timewait_death_row*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned long data)
{
	struct inet_timewait_death_row *twdr;
	int unsigned need_timer;

	twdr = (struct inet_timewait_death_row *)data;
	FUNC3(&twdr->death_lock);

	if (twdr->tw_count == 0)
		goto out;

	need_timer = 0;
	if (FUNC0(twdr, twdr->slot)) {
		twdr->thread_slots |= (1 << twdr->slot);
		FUNC2(&twdr->twkill_work);
		need_timer = 1;
	} else {
		/* We purged the entire slot, anything left?  */
		if (twdr->tw_count)
			need_timer = 1;
		twdr->slot = ((twdr->slot + 1) & (INET_TWDR_TWKILL_SLOTS - 1));
	}
	if (need_timer)
		FUNC1(&twdr->tw_timer, jiffies + twdr->period);
out:
	FUNC4(&twdr->death_lock);
}