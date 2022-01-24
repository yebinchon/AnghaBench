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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct TYPE_2__ {struct list_head* prev; } ;
struct slow_work {TYPE_1__ link; int /*<<< orphan*/  flags; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLOW_WORK_CANCELLING ; 
 int /*<<< orphan*/  SLOW_WORK_DELAYED ; 
 int /*<<< orphan*/  SLOW_WORK_ENQ_DEFERRED ; 
 int /*<<< orphan*/  SLOW_WORK_EXECUTING ; 
 int /*<<< orphan*/  SLOW_WORK_VERY_SLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slow_work*) ; 
 int /*<<< orphan*/  FUNC5 (struct slow_work*) ; 
 struct list_head slow_work_queue ; 
 int /*<<< orphan*/  slow_work_queue_lock ; 
 int /*<<< orphan*/  slow_work_queue_waits_for_occupation ; 
 int /*<<< orphan*/  slow_work_thread_wq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct list_head vslow_work_queue ; 
 int /*<<< orphan*/  vslow_work_queue_waits_for_occupation ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	wait_queue_head_t *wfo_wq;
	struct list_head *queue;
	struct slow_work *work = (struct slow_work *) data;
	unsigned long flags;
	bool queued = false, put = false, first = false;

	if (FUNC8(SLOW_WORK_VERY_SLOW, &work->flags)) {
		wfo_wq = &vslow_work_queue_waits_for_occupation;
		queue = &vslow_work_queue;
	} else {
		wfo_wq = &slow_work_queue_waits_for_occupation;
		queue = &slow_work_queue;
	}

	FUNC6(&slow_work_queue_lock, flags);
	if (FUNC1(!FUNC8(SLOW_WORK_CANCELLING, &work->flags))) {
		FUNC0(SLOW_WORK_DELAYED, &work->flags);

		if (FUNC8(SLOW_WORK_EXECUTING, &work->flags)) {
			/* we discard the reference the timer was holding in
			 * favour of the one the executor holds */
			FUNC3(SLOW_WORK_ENQ_DEFERRED, &work->flags);
			put = true;
		} else {
			FUNC4(work);
			FUNC2(&work->link, queue);
			queued = true;
			if (work->link.prev == queue)
				first = true;
		}
	}

	FUNC7(&slow_work_queue_lock, flags);
	if (put)
		FUNC5(work);
	if (first)
		FUNC9(wfo_wq);
	if (queued)
		FUNC9(&slow_work_thread_wq);
}