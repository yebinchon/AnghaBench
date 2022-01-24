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
struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_opl3 {int sys_timer_status; int /*<<< orphan*/  sys_timer_lock; TYPE_1__ tlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_opl3 *opl3)
{
	unsigned long flags;
	FUNC1(&opl3->sys_timer_lock, flags);
	if (! opl3->sys_timer_status) {
		opl3->tlist.expires = jiffies + 1;
		FUNC0(&opl3->tlist);
		opl3->sys_timer_status = 1;
	}
	FUNC2(&opl3->sys_timer_lock, flags);
}