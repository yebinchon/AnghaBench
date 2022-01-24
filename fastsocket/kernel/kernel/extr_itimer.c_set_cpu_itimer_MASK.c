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
struct itimerval {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct cpu_itimer {void* incr; void* expires; void* error; void* incr_error; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  void* cputime_t ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {struct cpu_itimer* it; } ;

/* Variables and functions */
 unsigned int CPUCLOCK_VIRT ; 
 int /*<<< orphan*/  ITIMER_PROF ; 
 int /*<<< orphan*/  ITIMER_VIRTUAL ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputime_one_jiffy ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cputime_zero ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned int,void**,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct itimerval const* const,void*) ; 

__attribute__((used)) static void FUNC11(struct task_struct *tsk, unsigned int clock_id,
			   const struct itimerval *const value,
			   struct itimerval *const ovalue)
{
	cputime_t cval, nval, cinterval, ninterval;
	s64 ns_ninterval, ns_nval;
	struct cpu_itimer *it = &tsk->signal->it[clock_id];

	nval = FUNC8(&value->it_value);
	ns_nval = FUNC9(&value->it_value);
	ninterval = FUNC8(&value->it_interval);
	ns_ninterval = FUNC9(&value->it_interval);

	it->incr_error = FUNC3(ninterval, ns_ninterval);
	it->error = FUNC3(nval, ns_nval);

	FUNC6(&tsk->sighand->siglock);

	cval = it->expires;
	cinterval = it->incr;
	if (!FUNC1(cval, cputime_zero) ||
	    !FUNC1(nval, cputime_zero)) {
		if (FUNC2(nval, cputime_zero))
			nval = FUNC0(nval, cputime_one_jiffy);
		FUNC5(tsk, clock_id, &nval, &cval);
	}
	it->expires = nval;
	it->incr = ninterval;
	FUNC10(clock_id == CPUCLOCK_VIRT ?
			   ITIMER_VIRTUAL : ITIMER_PROF, value, nval);

	FUNC7(&tsk->sighand->siglock);

	if (ovalue) {
		FUNC4(cval, &ovalue->it_value);
		FUNC4(cinterval, &ovalue->it_interval);
	}
}