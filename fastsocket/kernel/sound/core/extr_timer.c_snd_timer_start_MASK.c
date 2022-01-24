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
struct snd_timer_instance {int flags; unsigned int ticks; unsigned int cticks; scalar_t__ pticks; struct snd_timer* timer; } ;
struct snd_timer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_START ; 
 int SNDRV_TIMER_IFLG_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_timer*,struct snd_timer_instance*,unsigned int) ; 
 int FUNC2 (struct snd_timer_instance*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct snd_timer_instance *timeri, unsigned int ticks)
{
	struct snd_timer *timer;
	int result = -EINVAL;
	unsigned long flags;

	if (timeri == NULL || ticks < 1)
		return -EINVAL;
	if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE) {
		result = FUNC2(timeri);
		FUNC0(timeri, SNDRV_TIMER_EVENT_START);
		return result;
	}
	timer = timeri->timer;
	if (timer == NULL)
		return -EINVAL;
	FUNC3(&timer->lock, flags);
	timeri->ticks = timeri->cticks = ticks;
	timeri->pticks = 0;
	result = FUNC1(timer, timeri, ticks);
	FUNC4(&timer->lock, flags);
	FUNC0(timeri, SNDRV_TIMER_EVENT_START);
	return result;
}