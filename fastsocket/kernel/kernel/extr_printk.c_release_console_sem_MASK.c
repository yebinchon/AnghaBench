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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 unsigned int con_start ; 
 scalar_t__ console_locked ; 
 scalar_t__ console_may_schedule ; 
 int /*<<< orphan*/  console_sem ; 
 scalar_t__ console_suspended ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned int log_end ; 
 unsigned int log_start ; 
 int /*<<< orphan*/  logbuf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	unsigned long flags;
	unsigned _con_start, _log_end;
	unsigned wake_klogd = 0;

	if (console_suspended) {
		FUNC7(&console_sem);
		return;
	}

	console_may_schedule = 0;

	for ( ; ; ) {
		FUNC2(&logbuf_lock, flags);
		wake_klogd |= log_start - log_end;
		if (con_start == log_end)
			break;			/* Nothing to print */
		_con_start = con_start;
		_log_end = log_end;
		con_start = log_end;		/* Flush */
		FUNC3(&logbuf_lock);
		FUNC6();	/* don't trace print latency */
		FUNC0(_con_start, _log_end);
		FUNC5();
		FUNC1(flags);
	}
	console_locked = 0;
	FUNC7(&console_sem);
	FUNC4(&logbuf_lock, flags);
	if (wake_klogd)
		FUNC8();
}