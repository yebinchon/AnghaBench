#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  cputime64_t ;
struct TYPE_3__ {int /*<<< orphan*/  idle; } ;
struct TYPE_4__ {TYPE_1__ cpustat; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 

__attribute__((used)) static cputime64_t FUNC3(int cpu)
{
	u64 idle_time = FUNC0(cpu, NULL);
	cputime64_t idle;

	if (idle_time == -1ULL)
		/* !NO_HZ so we can rely on cpustat.idle */
		idle = FUNC1(cpu).cpustat.idle;
	else
		idle = FUNC2(idle_time);

	return idle;
}