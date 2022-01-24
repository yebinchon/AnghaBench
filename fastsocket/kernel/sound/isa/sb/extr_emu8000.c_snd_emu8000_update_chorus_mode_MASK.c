#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_emu8000 {int chorus_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  lfo_freq; int /*<<< orphan*/  delay; int /*<<< orphan*/  lfo_depth; int /*<<< orphan*/  delay_offset; int /*<<< orphan*/  feedback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int SNDRV_EMU8000_CHORUS_NUMBERS ; 
 int SNDRV_EMU8000_CHORUS_PREDEFINED ; 
 int /*<<< orphan*/ * chorus_defined ; 
 TYPE_1__* chorus_parm ; 

void
FUNC6(struct snd_emu8000 *emu)
{
	int effect = emu->chorus_mode;
	if (effect < 0 || effect >= SNDRV_EMU8000_CHORUS_NUMBERS ||
	    (effect >= SNDRV_EMU8000_CHORUS_PREDEFINED && !chorus_defined[effect]))
		return;
	FUNC4(emu, 0x09, chorus_parm[effect].feedback);
	FUNC4(emu, 0x0c, chorus_parm[effect].delay_offset);
	FUNC5(emu, 0x03, chorus_parm[effect].lfo_depth);
	FUNC0(emu, chorus_parm[effect].delay);
	FUNC1(emu, chorus_parm[effect].lfo_freq);
	FUNC2(emu, 0x8000);
	FUNC3(emu, 0x0000);
}