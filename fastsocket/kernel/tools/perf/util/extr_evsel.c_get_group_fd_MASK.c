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
struct perf_evsel {int /*<<< orphan*/  fd; struct perf_evsel* leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct perf_evsel*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*) ; 

__attribute__((used)) static int FUNC3(struct perf_evsel *evsel, int cpu, int thread)
{
	struct perf_evsel *leader = evsel->leader;
	int fd;

	if (!FUNC2(evsel))
		return -1;

	/*
	 * Leader must be already processed/open,
	 * if not it's a bug.
	 */
	FUNC0(!leader->fd);

	fd = FUNC1(leader, cpu, thread);
	FUNC0(fd == -1);

	return fd;
}