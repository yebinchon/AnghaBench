#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int /*<<< orphan*/ * m_owner; int /*<<< orphan*/  m_lock; } ;
typedef  TYPE_1__ kmutex_t ;
typedef  int /*<<< orphan*/  kcondvar_t ;
typedef  int clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * curthread ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 

clock_t
FUNC6(kcondvar_t *cv, kmutex_t *mp, clock_t abstime)
{
	int error;
	struct timespec ts;
	struct timeval tv;
	clock_t delta;

	abstime += FUNC2();
top:
	delta = abstime - FUNC2();
	if (delta <= 0)
		return (-1);

	if (FUNC3(&tv, NULL) != 0)
		FUNC1(!"gettimeofday() failed");

	ts.tv_sec = tv.tv_sec + delta / hz;
	ts.tv_nsec = tv.tv_usec * 1000 + (delta % hz) * (NANOSEC / hz);
	FUNC0(ts.tv_nsec >= 0);

	if (ts.tv_nsec >= NANOSEC) {
		ts.tv_sec++;
		ts.tv_nsec -= NANOSEC;
	}

	FUNC0(FUNC4(mp) == curthread);
	mp->m_owner = NULL;
	error = FUNC5(cv, &mp->m_lock, &ts);
	mp->m_owner = curthread;

	if (error == EINTR)
		goto top;

	if (error == ETIMEDOUT)
		return (-1);

	FUNC0(error == 0);

	return (1);
}