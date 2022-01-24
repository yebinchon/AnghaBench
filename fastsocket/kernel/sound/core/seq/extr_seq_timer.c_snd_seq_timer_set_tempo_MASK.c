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
struct snd_seq_timer {unsigned int tempo; int /*<<< orphan*/  lock; int /*<<< orphan*/  ppq; int /*<<< orphan*/  tick; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_seq_timer * tmr, int tempo)
{
	unsigned long flags;

	if (FUNC0(!tmr))
		return -EINVAL;
	if (tempo <= 0)
		return -EINVAL;
	FUNC2(&tmr->lock, flags);
	if ((unsigned int)tempo != tmr->tempo) {
		tmr->tempo = tempo;
		FUNC1(&tmr->tick, tmr->tempo, tmr->ppq);
	}
	FUNC3(&tmr->lock, flags);
	return 0;
}