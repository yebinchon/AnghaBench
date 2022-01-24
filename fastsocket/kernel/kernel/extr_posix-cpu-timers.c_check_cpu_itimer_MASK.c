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
struct task_struct {TYPE_1__* signal; } ;
struct cpu_itimer {scalar_t__ error; scalar_t__ incr_error; int /*<<< orphan*/  expires; int /*<<< orphan*/  incr; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_2__ {int /*<<< orphan*/  leader_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_PROF ; 
 int /*<<< orphan*/  ITIMER_VIRTUAL ; 
 int /*<<< orphan*/  SEND_SIG_PRIV ; 
 int SIGPROF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputime_one_jiffy ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputime_zero ; 
 scalar_t__ onecputick ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct task_struct *tsk, struct cpu_itimer *it,
			     cputime_t *expires, cputime_t cur_time, int signo)
{
	if (FUNC2(it->expires, cputime_zero))
		return;

	if (FUNC3(cur_time, it->expires)) {
		if (!FUNC2(it->incr, cputime_zero)) {
			it->expires = FUNC1(it->expires, it->incr);
			it->error += it->incr_error;
			if (it->error >= onecputick) {
				it->expires = FUNC5(it->expires,
							  cputime_one_jiffy);
				it->error -= onecputick;
			}
		} else {
			it->expires = cputime_zero;
		}

		FUNC6(signo == SIGPROF ?
				    ITIMER_PROF : ITIMER_VIRTUAL,
				    tsk->signal->leader_pid, cur_time);
		FUNC0(signo, SEND_SIG_PRIV, tsk);
	}

	if (!FUNC2(it->expires, cputime_zero) &&
	    (FUNC2(*expires, cputime_zero) ||
	     FUNC4(it->expires, *expires))) {
		*expires = it->expires;
	}
}