#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct snd_mpu401 {int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  timer_invoked; TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_MODE_INPUT_TIMER ; 
 int /*<<< orphan*/  MPU401_MODE_OUTPUT_TIMER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  snd_mpu401_uart_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4 (struct snd_mpu401 *mpu, int input)
{
	unsigned long flags;

	FUNC2 (&mpu->timer_lock, flags);
	if (mpu->timer_invoked == 0) {
		FUNC1(&mpu->timer);
		mpu->timer.data = (unsigned long)mpu;
		mpu->timer.function = snd_mpu401_uart_timer;
		mpu->timer.expires = 1 + jiffies;
		FUNC0(&mpu->timer);
	} 
	mpu->timer_invoked |= input ? MPU401_MODE_INPUT_TIMER :
		MPU401_MODE_OUTPUT_TIMER;
	FUNC3 (&mpu->timer_lock, flags);
}