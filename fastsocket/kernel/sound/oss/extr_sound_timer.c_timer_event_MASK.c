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

/* Variables and functions */
 int TIMER_ARMED ; 
 int TIMER_NOT_ARMED ; 
#define  TMR_CONTINUE 134 
#define  TMR_ECHO 133 
#define  TMR_START 132 
#define  TMR_STOP 131 
#define  TMR_TEMPO 130 
#define  TMR_WAIT_ABS 129 
#define  TMR_WAIT_REL 128 
 unsigned long curr_tempo ; 
 unsigned long curr_ticks ; 
 unsigned long next_event_time ; 
 unsigned long prev_event_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  ticks_offs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmr_ctr ; 
 int /*<<< orphan*/  tmr_offs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int tmr_running ; 

__attribute__((used)) static int FUNC4(int dev, unsigned char *event)
{
	unsigned char cmd = event[1];
	unsigned long parm = *(int *) &event[4];

	switch (cmd)
	{
		case TMR_WAIT_REL:
			parm += prev_event_time;
		case TMR_WAIT_ABS:
			if (parm > 0)
			{
				long time;

				if (parm <= curr_ticks)	/* It's the time */
					return TIMER_NOT_ARMED;
				time = parm;
				next_event_time = prev_event_time = time;
				return TIMER_ARMED;
			}
			break;

		case TMR_START:
			FUNC3();
			tmr_running = 1;
			FUNC0();
			break;

		case TMR_STOP:
			tmr_running = 0;
			break;

		case TMR_CONTINUE:
			tmr_running = 1;
			FUNC0();
			break;

		case TMR_TEMPO:
			if (parm)
			{
				if (parm < 8)
					parm = 8;
				if (parm > 250)
					parm = 250;
				tmr_offs = tmr_ctr;
				ticks_offs += FUNC2(tmr_ctr);
				tmr_ctr = 0;
				curr_tempo = parm;
				FUNC0();
			}
			break;

		case TMR_ECHO:
			FUNC1(event, 8);
			break;

		default:;
	}
	return TIMER_NOT_ARMED;
}