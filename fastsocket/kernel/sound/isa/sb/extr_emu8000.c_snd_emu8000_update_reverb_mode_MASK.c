#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_emu8000 {int reverb_mode; } ;
struct TYPE_4__ {scalar_t__ port; int /*<<< orphan*/  cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parms; } ;

/* Variables and functions */
 scalar_t__ DATA1 ; 
 int FUNC0 (struct snd_emu8000*) ; 
 int FUNC1 (struct snd_emu8000*) ; 
 int SNDRV_EMU8000_REVERB_NUMBERS ; 
 int SNDRV_EMU8000_REVERB_PREDEFINED ; 
 TYPE_2__* reverb_cmds ; 
 int /*<<< orphan*/ * reverb_defined ; 
 TYPE_1__* reverb_parm ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct snd_emu8000 *emu)
{
	int effect = emu->reverb_mode;
	int i;

	if (effect < 0 || effect >= SNDRV_EMU8000_REVERB_NUMBERS ||
	    (effect >= SNDRV_EMU8000_REVERB_PREDEFINED && !reverb_defined[effect]))
		return;
	for (i = 0; i < 28; i++) {
		int port;
		if (reverb_cmds[i].port == DATA1)
			port = FUNC0(emu);
		else
			port = FUNC1(emu);
		FUNC2(emu, port, reverb_cmds[i].cmd, reverb_parm[effect].parms[i]);
	}
}