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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  clock_attr ; 
 scalar_t__ clock_fd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	clock_fd = FUNC3(&clock_attr, FUNC2(), -1, -1, 0);

	if (clock_fd < 0 && errno == ENOSYS)
		FUNC1("No CONFIG_PERF_EVENTS=y kernel support configured?\n");
	else
		FUNC0(clock_fd < 0);
}