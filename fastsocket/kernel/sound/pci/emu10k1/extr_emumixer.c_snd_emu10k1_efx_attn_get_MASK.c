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
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int /*<<< orphan*/ * attn; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; struct snd_emu10k1_pcm_mixer* efx_pcm_mixer; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 size_t FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_emu10k1* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
                                struct snd_ctl_elem_value *ucontrol)
{
	struct snd_emu10k1 *emu = FUNC1(kcontrol);
	struct snd_emu10k1_pcm_mixer *mix =
		&emu->efx_pcm_mixer[FUNC0(kcontrol, &ucontrol->id)];
	unsigned long flags;

	FUNC2(&emu->reg_lock, flags);
	ucontrol->value.integer.value[0] = mix->attn[0];
	FUNC3(&emu->reg_lock, flags);
	return 0;
}