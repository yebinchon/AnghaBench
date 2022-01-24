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
struct perf_event_attr {int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_TASK_CLOCK ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct perf_event_attr attr;
	int fd;

	FUNC0(&attr, 0, sizeof(attr));

	attr.type = PERF_TYPE_SOFTWARE;
	attr.config = PERF_COUNT_SW_TASK_CLOCK;

	fd = FUNC3(&attr, 0, -1, -1, 0);

	if (fd < 0)
		FUNC1("Error: sys_perf_event_open() syscall returned "
		       "with %d (%s)\n", fd, FUNC2(errno));
	return fd;
}