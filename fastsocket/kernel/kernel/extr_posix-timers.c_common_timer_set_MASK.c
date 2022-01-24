#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ tv64; } ;
struct hrtimer {TYPE_3__* base; int /*<<< orphan*/  function; } ;
struct TYPE_7__ {TYPE_4__ interval; struct hrtimer timer; } ;
struct TYPE_8__ {TYPE_1__ real; } ;
struct k_itimer {int it_requeue_pending; int it_sigev_notify; TYPE_2__ it; int /*<<< orphan*/  it_clock; scalar_t__ it_overrun_last; } ;
struct TYPE_11__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct itimerspec {TYPE_5__ it_interval; TYPE_5__ it_value; } ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
struct TYPE_9__ {int /*<<< orphan*/  (* get_time ) () ;} ;

/* Variables and functions */
 int HRTIMER_MODE_ABS ; 
 int HRTIMER_MODE_REL ; 
 int REQUEUE_PENDING ; 
 int SIGEV_NONE ; 
 int SIGEV_THREAD_ID ; 
 int TIMER_ABSTIME ; 
 int TIMER_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct k_itimer*,struct itimerspec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer*,int) ; 
 scalar_t__ FUNC5 (struct hrtimer*) ; 
 int /*<<< orphan*/  posix_timer_fn ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_4__ FUNC7 (TYPE_5__) ; 

__attribute__((used)) static int
FUNC8(struct k_itimer *timr, int flags,
		 struct itimerspec *new_setting, struct itimerspec *old_setting)
{
	struct hrtimer *timer = &timr->it.real.timer;
	enum hrtimer_mode mode;

	if (old_setting)
		FUNC0(timr, old_setting);

	/* disable the timer */
	timr->it.real.interval.tv64 = 0;
	/*
	 * careful here.  If smp we could be in the "fire" routine which will
	 * be spinning as we hold the lock.  But this is ONLY an SMP issue.
	 */
	if (FUNC5(timer) < 0)
		return TIMER_RETRY;

	timr->it_requeue_pending = (timr->it_requeue_pending + 2) & 
		~REQUEUE_PENDING;
	timr->it_overrun_last = 0;

	/* switch off the timer when it_value is zero */
	if (!new_setting->it_value.tv_sec && !new_setting->it_value.tv_nsec)
		return 0;

	mode = flags & TIMER_ABSTIME ? HRTIMER_MODE_ABS : HRTIMER_MODE_REL;
	FUNC2(&timr->it.real.timer, timr->it_clock, mode);
	timr->it.real.timer.function = posix_timer_fn;

	FUNC3(timer, FUNC7(new_setting->it_value));

	/* Convert interval */
	timr->it.real.interval = FUNC7(new_setting->it_interval);

	/* SIGEV_NONE timers are not queued ! See common_timer_get */
	if (((timr->it_sigev_notify & ~SIGEV_THREAD_ID) == SIGEV_NONE)) {
		/* Setup correct expiry time for relative timers */
		if (mode == HRTIMER_MODE_REL) {
			FUNC1(timer, timer->base->get_time());
		}
		return 0;
	}

	FUNC4(timer, mode);
	return 0;
}