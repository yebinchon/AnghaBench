#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_gus_voice {int /*<<< orphan*/  number; struct gus_pcm_private* private_data; int /*<<< orphan*/  pcm; } ;
struct TYPE_6__ {unsigned short pcm_volume_level_left1; unsigned short pcm_volume_level_right1; int pcm_volume_level_left; int pcm_volume_level_right; struct snd_gus_voice* voices; } ;
struct snd_gus_card {int /*<<< orphan*/  voice_alloc; int /*<<< orphan*/  reg_lock; TYPE_3__ gf1; int /*<<< orphan*/  pcm_volume_level_lock; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct gus_pcm_private {int flags; int final_volume; struct snd_gus_voice** pvoices; } ;

/* Variables and functions */
 int SNDRV_GF1_PCM_PFLG_ACTIVE ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_VOLUME_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_VW_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ,unsigned short) ; 
 struct snd_gus_card* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC4(kcontrol);
	unsigned long flags;
	int change;
	unsigned int idx;
	unsigned short val1, val2, vol;
	struct gus_pcm_private *pcmp;
	struct snd_gus_voice *pvoice;
	
	val1 = ucontrol->value.integer.value[0] & 127;
	val2 = ucontrol->value.integer.value[1] & 127;
	FUNC6(&gus->pcm_volume_level_lock, flags);
	change = val1 != gus->gf1.pcm_volume_level_left1 ||
	         val2 != gus->gf1.pcm_volume_level_right1;
	gus->gf1.pcm_volume_level_left1 = val1;
	gus->gf1.pcm_volume_level_right1 = val2;
	gus->gf1.pcm_volume_level_left = FUNC1(val1 << 9) << 4;
	gus->gf1.pcm_volume_level_right = FUNC1(val2 << 9) << 4;
	FUNC8(&gus->pcm_volume_level_lock, flags);
	/* are we active? */
	FUNC6(&gus->voice_alloc, flags);
	for (idx = 0; idx < 32; idx++) {
		pvoice = &gus->gf1.voices[idx];
		if (!pvoice->pcm)
			continue;
		pcmp = pvoice->private_data;
		if (!(pcmp->flags & SNDRV_GF1_PCM_PFLG_ACTIVE))
			continue;
		/* load real volume - better precision */
		FUNC5(&gus->reg_lock);
		FUNC2(gus, pvoice->number);
		FUNC0(gus, SNDRV_GF1_VB_VOLUME_CONTROL);
		vol = pvoice == pcmp->pvoices[0] ? gus->gf1.pcm_volume_level_left : gus->gf1.pcm_volume_level_right;
		FUNC3(gus, SNDRV_GF1_VW_VOLUME, vol);
		pcmp->final_volume = 1;
		FUNC7(&gus->reg_lock);
	}
	FUNC8(&gus->voice_alloc, flags);
	return change;
}