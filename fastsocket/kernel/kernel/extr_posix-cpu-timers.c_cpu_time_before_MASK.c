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
union cpu_time_count {scalar_t__ sched; int /*<<< orphan*/  cpu; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ CPUCLOCK_SCHED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const clockid_t which_clock,
				  union cpu_time_count now,
				  union cpu_time_count then)
{
	if (FUNC0(which_clock) == CPUCLOCK_SCHED) {
		return now.sched < then.sched;
	}  else {
		return FUNC1(now.cpu, then.cpu);
	}
}