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
 int /*<<< orphan*/  SECS_FIRST_SCAN ; 
 int /*<<< orphan*/  current ; 
 long jiffies_scan_wait ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  scan_mutex ; 
 long FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	static int first_run = 1;

	FUNC4("Automatic memory scanning thread started\n");
	FUNC6(current, 10);

	/*
	 * Wait before the first scan to allow the system to fully initialize.
	 */
	if (first_run) {
		first_run = 0;
		FUNC7(SECS_FIRST_SCAN);
	}

	while (!FUNC1()) {
		signed long timeout = jiffies_scan_wait;

		FUNC2(&scan_mutex);
		FUNC0();
		FUNC3(&scan_mutex);

		/* wait before the next scan */
		while (timeout && !FUNC1())
			timeout = FUNC5(timeout);
	}

	FUNC4("Automatic memory scanning thread ended\n");

	return 0;
}