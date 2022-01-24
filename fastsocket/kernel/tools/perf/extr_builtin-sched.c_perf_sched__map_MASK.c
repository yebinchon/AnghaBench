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
struct perf_sched {int /*<<< orphan*/  max_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 scalar_t__ FUNC0 (struct perf_sched*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sched*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_sched *sched)
{
	sched->max_cpu = FUNC3(_SC_NPROCESSORS_CONF);

	FUNC2();
	if (FUNC0(sched, true, NULL))
		return -1;
	FUNC1(sched);
	return 0;
}