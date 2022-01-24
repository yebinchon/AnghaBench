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
struct pktgen_dev {int /*<<< orphan*/  delay; void* next_tx; int /*<<< orphan*/  idle_acc; scalar_t__ running; } ;
struct hrtimer_sleeper {int /*<<< orphan*/  timer; int /*<<< orphan*/ * task; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hrtimer_sleeper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct pktgen_dev *pkt_dev, ktime_t spin_until)
{
	ktime_t start_time, end_time;
	s64 remaining;
	struct hrtimer_sleeper t;

	FUNC4(&t.timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	FUNC6(&t.timer, spin_until);

	remaining = FUNC12(FUNC3(&t.timer));
	if (remaining <= 0) {
		pkt_dev->next_tx = FUNC8(spin_until, pkt_dev->delay);
		return;
	}

	start_time = FUNC9();
	if (remaining < 100)
		FUNC17(remaining); 	/* really small just spin */
	else {
		/* see do_nanosleep */
		FUNC5(&t, current);
		do {
			FUNC15(TASK_INTERRUPTIBLE);
			FUNC7(&t.timer, HRTIMER_MODE_ABS);
			if (!FUNC1(&t.timer))
				t.task = NULL;

			if (FUNC13(t.task))
				FUNC14();

			FUNC2(&t.timer);
		} while (t.task && pkt_dev->running && !FUNC16(current));
		FUNC0(TASK_RUNNING);
	}
	end_time = FUNC9();

	pkt_dev->idle_acc += FUNC11(FUNC10(end_time, start_time));
	pkt_dev->next_tx = FUNC8(end_time, pkt_dev->delay);
}