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
struct task_struct {int flags; void* stimescaled; void* stime; } ;
struct cpu_usage_stat {void* system; void* softirq; void* irq; } ;
typedef  int /*<<< orphan*/  cputime_t ;
typedef  int /*<<< orphan*/  cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUACCT_STAT_SYSTEM ; 
 int PF_VCPU ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 
 TYPE_1__ kstat_this_cpu ; 

void FUNC10(struct task_struct *p, int hardirq_offset,
			 cputime_t cputime, cputime_t cputime_scaled)
{
	struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;
	cputime64_t tmp;

	if ((p->flags & PF_VCPU) && (FUNC9() - hardirq_offset == 0)) {
		FUNC1(p, cputime, cputime_scaled);
		return;
	}

	/* Add system time to process. */
	p->stime = FUNC5(p->stime, cputime);
	p->stimescaled = FUNC5(p->stimescaled, cputime_scaled);
	FUNC0(p, cputime);

	/* Add system time to cpustat. */
	tmp = FUNC6(cputime);
	if (FUNC7() - hardirq_offset)
		cpustat->irq = FUNC4(cpustat->irq, tmp);
	else if (FUNC8())
		cpustat->softirq = FUNC4(cpustat->softirq, tmp);
	else
		cpustat->system = FUNC4(cpustat->system, tmp);

	FUNC3(p, CPUACCT_STAT_SYSTEM, cputime);

	/* Account for system time used */
	FUNC2(p);
}