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
struct snd_timer_instance {scalar_t__ pticks; int /*<<< orphan*/  ticks; int /*<<< orphan*/  cticks; struct snd_timer* timer; } ;
struct snd_timer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_STOP ; 
 int FUNC0 (struct snd_timer_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_timer_instance *timeri)
{
	struct snd_timer *timer;
	unsigned long flags;
	int err;

	err = FUNC0(timeri, 0, SNDRV_TIMER_EVENT_STOP);
	if (err < 0)
		return err;
	timer = timeri->timer;
	if (!timer)
		return -EINVAL;
	FUNC1(&timer->lock, flags);
	timeri->cticks = timeri->ticks;
	timeri->pticks = 0;
	FUNC2(&timer->lock, flags);
	return 0;
}