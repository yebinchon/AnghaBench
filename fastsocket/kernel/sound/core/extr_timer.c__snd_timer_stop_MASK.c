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
struct snd_timer_instance {int flags; int /*<<< orphan*/  active_list; int /*<<< orphan*/  ack_list; struct snd_timer* timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start ) (struct snd_timer*) ;int /*<<< orphan*/  (* stop ) (struct snd_timer*) ;} ;
struct snd_timer {int flags; int /*<<< orphan*/  lock; TYPE_1__ hw; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int SNDRV_TIMER_EVENT_RESOLUTION ; 
 int SNDRV_TIMER_FLG_CHANGE ; 
 int SNDRV_TIMER_FLG_RESCHED ; 
 int SNDRV_TIMER_IFLG_RUNNING ; 
 int SNDRV_TIMER_IFLG_SLAVE ; 
 int SNDRV_TIMER_IFLG_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slave_active_lock ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_timer_instance*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_timer*) ; 

__attribute__((used)) static int FUNC8(struct snd_timer_instance * timeri,
			   int keep_flag, int event)
{
	struct snd_timer *timer;
	unsigned long flags;

	if (FUNC1(!timeri))
		return -ENXIO;

	if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE) {
		if (!keep_flag) {
			FUNC4(&slave_active_lock, flags);
			timeri->flags &= ~SNDRV_TIMER_IFLG_RUNNING;
			FUNC5(&slave_active_lock, flags);
		}
		goto __end;
	}
	timer = timeri->timer;
	if (!timer)
		return -EINVAL;
	FUNC4(&timer->lock, flags);
	FUNC0(&timeri->ack_list);
	FUNC0(&timeri->active_list);
	if ((timeri->flags & SNDRV_TIMER_IFLG_RUNNING) &&
	    !(--timer->running)) {
		timer->hw.stop(timer);
		if (timer->flags & SNDRV_TIMER_FLG_RESCHED) {
			timer->flags &= ~SNDRV_TIMER_FLG_RESCHED;
			FUNC3(timer, 0);
			if (timer->flags & SNDRV_TIMER_FLG_CHANGE) {
				timer->flags &= ~SNDRV_TIMER_FLG_CHANGE;
				timer->hw.start(timer);
			}
		}
	}
	if (!keep_flag)
		timeri->flags &=
			~(SNDRV_TIMER_IFLG_RUNNING | SNDRV_TIMER_IFLG_START);
	FUNC5(&timer->lock, flags);
      __end:
	if (event != SNDRV_TIMER_EVENT_RESOLUTION)
		FUNC2(timeri, event);
	return 0;
}