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
struct snd_seq_timer {int running; int /*<<< orphan*/  last_update; int /*<<< orphan*/  ticks; int /*<<< orphan*/  timeri; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct snd_seq_timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct snd_seq_timer * tmr)
{
	if (! tmr->timeri)
		return -EINVAL;
	if (tmr->running)
		return -EBUSY;
	if (! tmr->initialized) {
		FUNC2(tmr);
		if (FUNC1(tmr) < 0)
			return -EINVAL;
	}
	FUNC3(tmr->timeri, tmr->ticks);
	tmr->running = 1;
	FUNC0(&tmr->last_update);
	return 0;
}