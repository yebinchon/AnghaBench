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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 scalar_t__ MOUNT_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(int current, int total)
{
	static time_t last_progress_time = 0;
	time_t now = FUNC4(NULL);
	char info[32];

	/* display header if we're here for the first time */
	if (current == 1) {
		FUNC2(FUNC1("Mounting ZFS filesystems"));
	} else if (current != total && last_progress_time + MOUNT_TIME >= now) {
		/* too soon to report again */
		return;
	}

	last_progress_time = now;

	(void) FUNC3(info, "(%d/%d)", current, total);

	if (current == total)
		FUNC0(info);
	else
		FUNC5(info);
}