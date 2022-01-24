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
 int MSEC_PER_SEC ; 
 int pause_on_oops ; 
 int pause_on_oops_flag ; 
 int /*<<< orphan*/  pause_on_oops_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long flags;
	static int spin_counter;

	if (!pause_on_oops)
		return;

	FUNC1(&pause_on_oops_lock, flags);
	if (pause_on_oops_flag == 0) {
		/* This CPU may now print the oops message */
		pause_on_oops_flag = 1;
	} else {
		/* We need to stall this CPU */
		if (!spin_counter) {
			/* This CPU gets to do the counting */
			spin_counter = pause_on_oops;
			do {
				FUNC3(&pause_on_oops_lock);
				FUNC2(MSEC_PER_SEC);
				FUNC0(&pause_on_oops_lock);
			} while (--spin_counter);
			pause_on_oops_flag = 0;
		} else {
			/* This CPU waits for a different one */
			while (spin_counter) {
				FUNC3(&pause_on_oops_lock);
				FUNC2(1);
				FUNC0(&pause_on_oops_lock);
			}
		}
	}
	FUNC4(&pause_on_oops_lock, flags);
}