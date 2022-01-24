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
struct snd_timer {int dummy; } ;
struct snd_opl3 {unsigned char timer_enable; int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  (* command ) (struct snd_opl3*,int,unsigned char) ;} ;

/* Variables and functions */
 int OPL3_LEFT ; 
 int OPL3_REG_TIMER_CONTROL ; 
 unsigned char OPL3_TIMER2_MASK ; 
 unsigned char OPL3_TIMER2_START ; 
 struct snd_opl3* FUNC0 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl3*,int,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct snd_timer * timer)
{
	unsigned long flags;
	unsigned char tmp;
	struct snd_opl3 *opl3;

	opl3 = FUNC0(timer);
	FUNC1(&opl3->timer_lock, flags);
	tmp = (opl3->timer_enable | OPL3_TIMER2_MASK) & ~OPL3_TIMER2_START;
	opl3->timer_enable = tmp;
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, tmp);	/* disable timer #1 */
	FUNC2(&opl3->timer_lock, flags);
	return 0;
}