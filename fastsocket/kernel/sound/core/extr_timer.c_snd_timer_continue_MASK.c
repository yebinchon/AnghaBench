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
struct snd_timer_instance {int flags; int cticks; scalar_t__ pticks; struct snd_timer* timer; } ;
struct snd_timer {int /*<<< orphan*/  lock; int /*<<< orphan*/  sticks; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_CONTINUE ; 
 int SNDRV_TIMER_IFLG_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_timer*,struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_timer_instance*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct snd_timer_instance *timeri)
{
	struct snd_timer *timer;
	int result = -EINVAL;
	unsigned long flags;

	if (timeri == NULL)
		return result;
	if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE)
		return FUNC2(timeri);
	timer = timeri->timer;
	if (! timer)
		return -EINVAL;
	FUNC3(&timer->lock, flags);
	if (!timeri->cticks)
		timeri->cticks = 1;
	timeri->pticks = 0;
	result = FUNC1(timer, timeri, timer->sticks);
	FUNC4(&timer->lock, flags);
	FUNC0(timeri, SNDRV_TIMER_EVENT_CONTINUE);
	return result;
}