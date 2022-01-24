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
struct snd_ad1816a {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  AD1816A_TIMER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_ad1816a* FUNC1 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_timer *timer)
{
	unsigned long flags;
	struct snd_ad1816a *chip = FUNC1(timer);
	FUNC2(&chip->lock, flags);

	FUNC0(chip, AD1816A_INTERRUPT_ENABLE,
		AD1816A_TIMER_ENABLE, 0x0000);

	FUNC3(&chip->lock, flags);
	return 0;
}