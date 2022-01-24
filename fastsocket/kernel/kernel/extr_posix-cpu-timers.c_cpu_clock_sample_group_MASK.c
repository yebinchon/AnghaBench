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
union cpu_time_count {int /*<<< orphan*/  sched; int /*<<< orphan*/  cpu; } ;
struct task_struct {int dummy; } ;
struct task_cputime {int /*<<< orphan*/  utime; int /*<<< orphan*/  stime; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
#define  CPUCLOCK_PROF 130 
#define  CPUCLOCK_SCHED 129 
#define  CPUCLOCK_VIRT 128 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct task_cputime*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(const clockid_t which_clock,
				  struct task_struct *p,
				  union cpu_time_count *cpu)
{
	struct task_cputime cputime;

	switch (FUNC0(which_clock)) {
	default:
		return -EINVAL;
	case CPUCLOCK_PROF:
		FUNC2(p, &cputime);
		cpu->cpu = FUNC1(cputime.utime, cputime.stime);
		break;
	case CPUCLOCK_VIRT:
		FUNC2(p, &cputime);
		cpu->cpu = cputime.utime;
		break;
	case CPUCLOCK_SCHED:
		cpu->sched = FUNC3(p);
		break;
	}
	return 0;
}