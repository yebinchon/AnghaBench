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
struct workqueue_struct {int dummy; } ;
struct work_struct {int /*<<< orphan*/  entry; } ;
struct timer_list {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct delayed_work {struct timer_list timer; struct work_struct work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*,int) ; 
 int /*<<< orphan*/  delayed_work_timer_fn ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct timer_list*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct workqueue_struct*,int /*<<< orphan*/ ) ; 

int FUNC12(int cpu, struct workqueue_struct *wq,
			struct delayed_work *dwork, unsigned long delay)
{
	int ret = 0;
	struct timer_list *timer = &dwork->timer;
	struct work_struct *work = &dwork->work;

	if (!FUNC6(WORK_STRUCT_PENDING, FUNC10(work))) {
		FUNC0(FUNC7(timer));
		FUNC0(!FUNC3(&work->entry));

		FUNC8(&dwork->timer);

		/* This stores cwq for the moment, for the timer_fn */
		FUNC5(work, FUNC11(wq, FUNC4()));
		timer->expires = jiffies + delay;
		timer->data = (unsigned long)dwork;
		timer->function = delayed_work_timer_fn;

		if (FUNC9(cpu >= 0))
			FUNC2(timer, cpu);
		else
			FUNC1(timer);
		ret = 1;
	}
	return ret;
}