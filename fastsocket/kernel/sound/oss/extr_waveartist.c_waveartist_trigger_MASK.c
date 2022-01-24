#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int open_mode; } ;
typedef  TYPE_1__ wavnc_port_info ;
struct TYPE_6__ {int audio_mode; } ;
typedef  TYPE_2__ wavnc_info ;
struct TYPE_7__ {scalar_t__ portc; scalar_t__ devc; } ;

/* Variables and functions */
 int DEBUG_TRIGGER ; 
 int OPEN_READ ; 
 int OPEN_WRITE ; 
 int PCM_ENABLE_INPUT ; 
 int PCM_ENABLE_OUTPUT ; 
 int /*<<< orphan*/  WACMD_INPUTSTART ; 
 int /*<<< orphan*/  WACMD_OUTPUTSTART ; 
 TYPE_4__** audio_devs ; 
 int debug_flg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  waveartist_lock ; 

__attribute__((used)) static void
FUNC4(int dev, int state)
{
	wavnc_info	*devc = (wavnc_info *) audio_devs[dev]->devc;
	wavnc_port_info	*portc = (wavnc_port_info *) audio_devs[dev]->portc;
	unsigned long	flags;

	if (debug_flg & DEBUG_TRIGGER) {
		FUNC0("wavnc: audio trigger ");
		if (state & PCM_ENABLE_INPUT)
			FUNC0("in ");
		if (state & PCM_ENABLE_OUTPUT)
			FUNC0("out");
		FUNC0("\n");
	}

	FUNC1(&waveartist_lock, flags);

	state &= devc->audio_mode;

	if (portc->open_mode & OPEN_READ &&
	    state & PCM_ENABLE_INPUT)
		/*
		 * enable ADC Data Transfer to PC
		 */
		FUNC3(devc, WACMD_INPUTSTART);

	if (portc->open_mode & OPEN_WRITE &&
	    state & PCM_ENABLE_OUTPUT)
		/*
		 * enable DAC data transfer from PC
		 */
		FUNC3(devc, WACMD_OUTPUTSTART);

	FUNC2(&waveartist_lock, flags);
}