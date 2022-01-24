#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {void* utimescaled; void* utime; } ;
struct cpu_usage_stat {void* user; void* nice; } ;
typedef  int /*<<< orphan*/  cputime_t ;
typedef  int /*<<< orphan*/  cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUACCT_STAT_USER ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ kstat_this_cpu ; 

void FUNC7(struct task_struct *p, cputime_t cputime,
		       cputime_t cputime_scaled)
{
	struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
	cputime64_t tmp;

	/* Add user time to process. */
	p->utime = FUNC5(p->utime, cputime);
	p->utimescaled = FUNC5(p->utimescaled, cputime_scaled);
	FUNC1(p, cputime);

	/* Add user time to cpustat. */
	tmp = FUNC6(cputime);
	if (FUNC0(p) > 0)
		cpustat->nice = FUNC4(cpustat->nice, tmp);
	else
		cpustat->user = FUNC4(cpustat->user, tmp);

	FUNC3(p, CPUACCT_STAT_USER, cputime);
	/* Account for user time used */
	FUNC2(p);
}