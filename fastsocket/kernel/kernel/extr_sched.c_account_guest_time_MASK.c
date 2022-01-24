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
struct task_struct {void* gtime; void* utimescaled; void* utime; } ;
struct cpu_usage_stat {void* guest; void* user; } ;
typedef  int /*<<< orphan*/  cputime_t ;
typedef  int /*<<< orphan*/  cputime64_t ;
struct TYPE_2__ {struct cpu_usage_stat cpustat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ kstat_this_cpu ; 

__attribute__((used)) static void FUNC4(struct task_struct *p, cputime_t cputime,
			       cputime_t cputime_scaled)
{
	cputime64_t tmp;
	struct cpu_usage_stat *cpustat = &kstat_this_cpu.cpustat;

	tmp = FUNC3(cputime);

	/* Add guest time to process. */
	p->utime = FUNC2(p->utime, cputime);
	p->utimescaled = FUNC2(p->utimescaled, cputime_scaled);
	FUNC0(p, cputime);
	p->gtime = FUNC2(p->gtime, cputime);

	/* Add guest time to cpustat. */
	cpustat->user = FUNC1(cpustat->user, tmp);
	cpustat->guest = FUNC1(cpustat->guest, tmp);
}