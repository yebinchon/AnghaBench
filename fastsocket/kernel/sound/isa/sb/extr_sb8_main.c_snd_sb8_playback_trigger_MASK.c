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
struct snd_sb {unsigned int playback_format; int force_mode16; int /*<<< orphan*/  mode; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mixer_lock; int /*<<< orphan*/  p_period_size; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; } ;

/* Variables and functions */
 unsigned int SB_DSP_DMA8_OFF ; 
 unsigned int SB_DSP_HI_OUTPUT_AUTO ; 
 unsigned int SB_DSP_OUTPUT ; 
 unsigned int SB_DSP_SPEAKER_OFF ; 
 int /*<<< orphan*/  SB_DSP_STEREO_SW ; 
 int /*<<< orphan*/  SB_MODE_HALT ; 
 int /*<<< orphan*/  SB_MODE_PLAYBACK_8 ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 struct snd_sb* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				    int cmd)
{
	unsigned long flags;
	struct snd_sb *chip = FUNC0(substream);
	unsigned int count;

	FUNC5(&chip->reg_lock, flags);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(chip, chip->playback_format);
		if (chip->playback_format == SB_DSP_OUTPUT) {
			count = chip->p_period_size - 1;
			FUNC1(chip, count & 0xff);
			FUNC1(chip, count >> 8);
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		if (chip->playback_format == SB_DSP_HI_OUTPUT_AUTO) {
			struct snd_pcm_runtime *runtime = substream->runtime;
			FUNC2(chip);
			if (runtime->channels > 1) {
				FUNC4(&chip->mixer_lock);
				/* restore output filter and set hardware to mono mode */ 
				FUNC3(chip, SB_DSP_STEREO_SW, chip->force_mode16 & ~0x02);
				FUNC6(&chip->mixer_lock);
			}
		} else {
			FUNC1(chip, SB_DSP_DMA8_OFF);
		}
		FUNC1(chip, SB_DSP_SPEAKER_OFF);
	}
	FUNC7(&chip->reg_lock, flags);
	chip->mode = (cmd == SNDRV_PCM_TRIGGER_START) ? SB_MODE_PLAYBACK_8 : SB_MODE_HALT;
	return 0;
}