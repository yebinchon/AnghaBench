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
 int TMR_INTERNAL ; 
 int TMR_MODE_CLS ; 
 int TMR_MODE_FSK ; 
 int TMR_MODE_MIDI ; 
 int TMR_MODE_SMPTE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int timer_mode ; 

__attribute__((used)) static void FUNC1(int midi_dev)
{
	if (timer_mode & TMR_MODE_CLS)
		FUNC0(midi_dev, 0x3c, 0);	/* Use CLS sync */
	else if (timer_mode & TMR_MODE_SMPTE)
		FUNC0(midi_dev, 0x3d, 0);	/* Use SMPTE sync */

	if (timer_mode & TMR_INTERNAL)
	{
		  FUNC0(midi_dev, 0x80, 0);	/* Use MIDI sync */
	}
	else
	{
		if (timer_mode & (TMR_MODE_MIDI | TMR_MODE_CLS))
		{
			FUNC0(midi_dev, 0x82, 0);		/* Use MIDI sync */
			FUNC0(midi_dev, 0x91, 0);		/* Enable ext MIDI ctrl */
		}
		else if (timer_mode & TMR_MODE_FSK)
			FUNC0(midi_dev, 0x81, 0);	/* Use FSK sync */
	}
}