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
struct bdi_writeback {int /*<<< orphan*/  bdi; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int dirty_writeback_interval ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 long FUNC10 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 

int FUNC11(struct bdi_writeback *wb)
{
	unsigned long last_active = jiffies;
	unsigned long wait_jiffies = -1UL;
	long pages_written;

	FUNC7(wb->bdi);

	while (!FUNC0()) {
		pages_written = FUNC10(wb, 0);

		FUNC6(pages_written);

		if (pages_written)
			last_active = jiffies;
		else if (wait_jiffies != -1UL) {
			unsigned long max_idle;

			/*
			 * Longest period of inactivity that we tolerate. If we
			 * see dirty data again later, the task will get
			 * recreated automatically.
			 */
			max_idle = FUNC1(5UL * 60 * HZ, wait_jiffies);
			if (FUNC5(jiffies, max_idle + last_active))
				break;
		}

		if (dirty_writeback_interval) {
			wait_jiffies = FUNC2(dirty_writeback_interval * 10);
			FUNC4(wait_jiffies);
		} else
			FUNC3();

		FUNC9();
	}

	FUNC8(wb->bdi);

	return 0;
}