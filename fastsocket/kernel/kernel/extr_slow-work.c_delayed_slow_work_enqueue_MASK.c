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
struct slow_work {int /*<<< orphan*/  flags; int /*<<< orphan*/  ops; } ;
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct delayed_slow_work {TYPE_1__ timer; struct slow_work work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ECANCELED ; 
 int /*<<< orphan*/  SLOW_WORK_CANCELLING ; 
 int /*<<< orphan*/  SLOW_WORK_DELAYED ; 
 int /*<<< orphan*/  SLOW_WORK_PENDING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  delayed_slow_work_timer ; 
 scalar_t__ jiffies ; 
 int FUNC3 (struct slow_work*) ; 
 int FUNC4 (struct slow_work*) ; 
 int /*<<< orphan*/  slow_work_queue_lock ; 
 scalar_t__ slow_work_user_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct delayed_slow_work *dwork,
			      unsigned long delay)
{
	struct slow_work *work = &dwork->work;
	unsigned long flags;
	int ret;

	if (delay == 0)
		return FUNC3(&dwork->work);

	FUNC1(slow_work_user_count <= 0);
	FUNC1(!work);
	FUNC1(!work->ops);

	if (FUNC9(SLOW_WORK_CANCELLING, &work->flags))
		return -ECANCELED;

	if (!FUNC8(SLOW_WORK_PENDING, &work->flags)) {
		FUNC5(&slow_work_queue_lock, flags);

		if (FUNC9(SLOW_WORK_CANCELLING, &work->flags))
			goto cancelled;

		/* the timer holds a reference whilst it is pending */
		ret = FUNC4(work);
		if (ret < 0)
			goto cant_get_ref;

		if (FUNC7(SLOW_WORK_DELAYED, &work->flags))
			FUNC0();
		dwork->timer.expires = jiffies + delay;
		dwork->timer.data = (unsigned long) work;
		dwork->timer.function = delayed_slow_work_timer;
		FUNC2(&dwork->timer);

		FUNC6(&slow_work_queue_lock, flags);
	}

	return 0;

cancelled:
	ret = -ECANCELED;
cant_get_ref:
	FUNC6(&slow_work_queue_lock, flags);
	return ret;
}