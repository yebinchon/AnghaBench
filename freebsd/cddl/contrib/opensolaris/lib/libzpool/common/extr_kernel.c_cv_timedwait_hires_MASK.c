#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  TYPE_1__ timespec_t ;
struct TYPE_8__ {int /*<<< orphan*/ * m_owner; int /*<<< orphan*/  m_lock; } ;
typedef  TYPE_2__ kmutex_t ;
typedef  int /*<<< orphan*/  kcondvar_t ;
typedef  int hrtime_t ;
typedef  int clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CALLOUT_FLAG_ABSOLUTE ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * curthread ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

clock_t
FUNC5(kcondvar_t *cv, kmutex_t *mp, hrtime_t tim, hrtime_t res,
    int flag)
{
	int error;
	timespec_t ts;
	hrtime_t delta;

	FUNC0(flag == 0 || flag == CALLOUT_FLAG_ABSOLUTE);

top:
	delta = tim;
	if (flag & CALLOUT_FLAG_ABSOLUTE)
		delta -= FUNC2();

	if (delta <= 0)
		return (-1);

	FUNC1(CLOCK_REALTIME, &ts);
	ts.tv_sec += delta / NANOSEC;
	ts.tv_nsec += delta % NANOSEC;
	if (ts.tv_nsec >= NANOSEC) {
		ts.tv_sec++;
		ts.tv_nsec -= NANOSEC;
	}

	FUNC0(FUNC3(mp) == curthread);
	mp->m_owner = NULL;
	error = FUNC4(cv, &mp->m_lock, &ts);
	mp->m_owner = curthread;

	if (error == ETIMEDOUT)
		return (-1);

	if (error == EINTR)
		goto top;

	FUNC0(error == 0);

	return (1);
}