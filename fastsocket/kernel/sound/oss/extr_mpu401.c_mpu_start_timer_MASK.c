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
struct mpu_config {int dummy; } ;

/* Variables and functions */
 int TIMER_ARMED ; 
 int TIMER_NOT_ARMED ; 
 int TMR_INTERNAL ; 
 struct mpu_config* dev_conf ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int timer_mode ; 
 int /*<<< orphan*/  FUNC2 (struct mpu_config*) ; 
 int tmr_running ; 

__attribute__((used)) static int FUNC3(int midi_dev)
{
	struct mpu_config *devc= &dev_conf[midi_dev];

	FUNC2(devc);
	FUNC1(midi_dev);

	if (tmr_running)
		return TIMER_NOT_ARMED;		/* Already running */

	if (timer_mode & TMR_INTERNAL)
	{
		FUNC0(midi_dev, 0x02, 0);	/* Send MIDI start */
		tmr_running = 1;
		return TIMER_NOT_ARMED;
	}
	else
	{
		FUNC0(midi_dev, 0x35, 0);	/* Enable mode messages to PC */
		FUNC0(midi_dev, 0x38, 0);	/* Enable sys common messages to PC */
		FUNC0(midi_dev, 0x39, 0);	/* Enable real time messages to PC */
		FUNC0(midi_dev, 0x97, 0);	/* Enable system exclusive messages to PC */
	}
	return TIMER_ARMED;
}