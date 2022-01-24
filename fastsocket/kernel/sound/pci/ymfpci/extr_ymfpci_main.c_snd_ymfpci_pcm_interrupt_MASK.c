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
typedef  scalar_t__ u32 ;
struct snd_ymfpci_voice {struct snd_ymfpci_playback_bank* bank; struct snd_ymfpci_pcm* ypcm; } ;
struct snd_ymfpci_playback_bank {scalar_t__ eff3_gain_end; scalar_t__ right_gain_end; scalar_t__ eff2_gain_end; scalar_t__ left_gain_end; int /*<<< orphan*/  start; } ;
struct snd_ymfpci_pcm {scalar_t__ last_pos; scalar_t__ buffer_size; int /*<<< orphan*/  update_pcm_vol; scalar_t__ output_rear; TYPE_1__** voices; TYPE_3__* substream; int /*<<< orphan*/  period_size; int /*<<< orphan*/  period_pos; scalar_t__ running; } ;
struct snd_ymfpci {size_t active_bank; int /*<<< orphan*/  reg_lock; TYPE_2__* pcm_mixer; } ;
struct TYPE_6__ {unsigned int number; } ;
struct TYPE_5__ {int left; int right; } ;
struct TYPE_4__ {struct snd_ymfpci_playback_bank* bank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_ymfpci *chip, struct snd_ymfpci_voice *voice)
{
	struct snd_ymfpci_pcm *ypcm;
	u32 pos, delta;
	
	if ((ypcm = voice->ypcm) == NULL)
		return;
	if (ypcm->substream == NULL)
		return;
	FUNC3(&chip->reg_lock);
	if (ypcm->running) {
		pos = FUNC1(voice->bank[chip->active_bank].start);
		if (pos < ypcm->last_pos)
			delta = pos + (ypcm->buffer_size - ypcm->last_pos);
		else
			delta = pos - ypcm->last_pos;
		ypcm->period_pos += delta;
		ypcm->last_pos = pos;
		if (ypcm->period_pos >= ypcm->period_size) {
			/*
			printk(KERN_DEBUG
			       "done - active_bank = 0x%x, start = 0x%x\n",
			       chip->active_bank,
			       voice->bank[chip->active_bank].start);
			*/
			ypcm->period_pos %= ypcm->period_size;
			FUNC4(&chip->reg_lock);
			FUNC2(ypcm->substream);
			FUNC3(&chip->reg_lock);
		}

		if (FUNC5(ypcm->update_pcm_vol)) {
			unsigned int subs = ypcm->substream->number;
			unsigned int next_bank = 1 - chip->active_bank;
			struct snd_ymfpci_playback_bank *bank;
			u32 volume;
			
			bank = &voice->bank[next_bank];
			volume = FUNC0(chip->pcm_mixer[subs].left << 15);
			bank->left_gain_end = volume;
			if (ypcm->output_rear)
				bank->eff2_gain_end = volume;
			if (ypcm->voices[1])
				bank = &ypcm->voices[1]->bank[next_bank];
			volume = FUNC0(chip->pcm_mixer[subs].right << 15);
			bank->right_gain_end = volume;
			if (ypcm->output_rear)
				bank->eff3_gain_end = volume;
			ypcm->update_pcm_vol--;
		}
	}
	FUNC4(&chip->reg_lock);
}