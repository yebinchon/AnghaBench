#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int** send_volume; TYPE_4__* epcm; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; scalar_t__ audigy; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_3__** voices; } ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_emu10k1* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
                                       struct snd_ctl_elem_value *ucontrol)
{
	unsigned long flags;
	struct snd_emu10k1 *emu = FUNC1(kcontrol);
	int ch = FUNC0(kcontrol, &ucontrol->id);
	struct snd_emu10k1_pcm_mixer *mix = &emu->efx_pcm_mixer[ch];
	int change = 0, idx, val;
	int num_efx = emu->audigy ? 8 : 4;

	FUNC2(&emu->reg_lock, flags);
	for (idx = 0; idx < num_efx; idx++) {
		val = ucontrol->value.integer.value[idx] & 255;
		if (mix->send_volume[0][idx] != val) {
			mix->send_volume[0][idx] = val;
			change = 1;
		}
	}
	if (change && mix->epcm) {
		if (mix->epcm->voices[ch]) {
			FUNC4(emu, mix->epcm->voices[ch]->number,
						   &mix->send_volume[0][0]);
		}
	}
	FUNC3(&emu->reg_lock, flags);
	return change;
}