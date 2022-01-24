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
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct task_cputime {int /*<<< orphan*/  utime; int /*<<< orphan*/  stime; } ;
struct itimerval {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct cpu_itimer {int /*<<< orphan*/  incr; int /*<<< orphan*/  expires; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;

/* Variables and functions */
 unsigned int CPUCLOCK_PROF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputime_one_jiffy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cputime_zero ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,struct task_cputime*) ; 

__attribute__((used)) static void FUNC8(struct task_struct *tsk, unsigned int clock_id,
			   struct itimerval *const value)
{
	cputime_t cval, cinterval;
	struct cpu_itimer *it = &tsk->signal->it[clock_id];

	FUNC5(&tsk->sighand->siglock);

	cval = it->expires;
	cinterval = it->incr;
	if (!FUNC1(cval, cputime_zero)) {
		struct task_cputime cputime;
		cputime_t t;

		FUNC7(tsk, &cputime);
		if (clock_id == CPUCLOCK_PROF)
			t = FUNC0(cputime.utime, cputime.stime);
		else
			/* CPUCLOCK_VIRT */
			t = cputime.utime;

		if (FUNC2(cval, t))
			/* about to fire */
			cval = cputime_one_jiffy;
		else
			cval = FUNC3(cval, t);
	}

	FUNC6(&tsk->sighand->siglock);

	FUNC4(cval, &value->it_value);
	FUNC4(cinterval, &value->it_interval);
}