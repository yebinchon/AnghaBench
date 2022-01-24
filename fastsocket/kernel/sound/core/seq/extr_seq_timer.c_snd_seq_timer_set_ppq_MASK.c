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
struct snd_seq_timer {int ppq; int /*<<< orphan*/  lock; int /*<<< orphan*/  tempo; int /*<<< orphan*/  tick; scalar_t__ running; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct snd_seq_timer * tmr, int ppq)
{
	unsigned long flags;

	if (FUNC0(!tmr))
		return -EINVAL;
	if (ppq <= 0)
		return -EINVAL;
	FUNC3(&tmr->lock, flags);
	if (tmr->running && (ppq != tmr->ppq)) {
		/* refuse to change ppq on running timers */
		/* because it will upset the song position (ticks) */
		FUNC4(&tmr->lock, flags);
		FUNC1("seq: cannot change ppq of a running timer\n");
		return -EBUSY;
	}

	tmr->ppq = ppq;
	FUNC2(&tmr->tick, tmr->tempo, tmr->ppq);
	FUNC4(&tmr->lock, flags);
	return 0;
}