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
struct snd_timer_instance {TYPE_1__* master; int /*<<< orphan*/  active_list; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  slave_active_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_TIMER_IFLG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slave_active_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_timer_instance *timeri)
{
	unsigned long flags;

	FUNC1(&slave_active_lock, flags);
	timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
	if (timeri->master)
		FUNC0(&timeri->active_list,
			      &timeri->master->slave_active_head);
	FUNC2(&slave_active_lock, flags);
	return 1; /* delayed start */
}