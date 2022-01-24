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
struct mpu_config {int devno; int /*<<< orphan*/  timer_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  TMR_CLOCK 132 
#define  TMR_CONTINUE 131 
 int TMR_EXTERNAL ; 
#define  TMR_SPP 130 
#define  TMR_START 129 
#define  TMR_STOP 128 
 int /*<<< orphan*/  next_event_time ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int timer_mode ; 
 int tmr_running ; 

__attribute__((used)) static void FUNC8(struct mpu_config *devc, int event, int parm)
{
	int midi_dev = devc->devno;

	if (!devc->timer_flag)
		return;

	switch (event)
	{
		case TMR_CLOCK:
			FUNC5("<MIDI clk>");
			break;

		case TMR_START:
			FUNC5("Ext MIDI start\n");
			if (!tmr_running)
			{
				if (timer_mode & TMR_EXTERNAL)
				{
					tmr_running = 1;
					FUNC6(midi_dev);
					next_event_time = 0;
					FUNC4(FUNC2());
				}
			}
			break;

		case TMR_STOP:
			FUNC5("Ext MIDI stop\n");
			if (timer_mode & TMR_EXTERNAL)
			{
				tmr_running = 0;
				FUNC7(midi_dev);
				FUNC4(FUNC3());
			}
			break;

		case TMR_CONTINUE:
			FUNC5("Ext MIDI continue\n");
			if (timer_mode & TMR_EXTERNAL)
			{
				tmr_running = 1;
				FUNC6(midi_dev);
				FUNC4(FUNC0());
		  	}
		  	break;

		case TMR_SPP:
			FUNC5("Songpos: %d\n", parm);
			if (timer_mode & TMR_EXTERNAL)
			{
				FUNC4(FUNC1(parm));
			}
			break;
	}
}