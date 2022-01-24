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
struct snd_timer {int sticks; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTE_INTERVALTIMERENB ; 
 scalar_t__ TIMER ; 
 unsigned int TIMER_RATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC2 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_timer *timer)
{
	struct snd_emu10k1 *emu;
	unsigned long flags;
	unsigned int delay;

	emu = FUNC2(timer);
	delay = timer->sticks - 1;
	if (delay < 5 ) /* minimum time is 5 ticks */
		delay = 5;
	FUNC3(&emu->reg_lock, flags);
	FUNC1(emu, INTE_INTERVALTIMERENB);
	FUNC0(delay & TIMER_RATE_MASK, emu->port + TIMER);
	FUNC4(&emu->reg_lock, flags);
	return 0;
}