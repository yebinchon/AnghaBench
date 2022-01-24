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
struct snd_sb {int mode; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SB_DSP_DMA16_OFF ; 
 int /*<<< orphan*/  SB_DSP_DMA16_ON ; 
 int /*<<< orphan*/  SB_DSP_DMA8_OFF ; 
 int /*<<< orphan*/  SB_DSP_DMA8_ON ; 
 int SB_MODE_CAPTURE_16 ; 
 int SB_MODE_PLAYBACK_16 ; 
 int SB_RATE_LOCK_CAPTURE ; 
 int SB_RATE_LOCK_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 struct snd_sb* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				     int cmd)
{
	struct snd_sb *chip = FUNC0(substream);
	int result = 0;

	FUNC2(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		chip->mode |= SB_RATE_LOCK_PLAYBACK;
		FUNC1(chip, chip->mode & SB_MODE_PLAYBACK_16 ? SB_DSP_DMA16_ON : SB_DSP_DMA8_ON);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC1(chip, chip->mode & SB_MODE_PLAYBACK_16 ? SB_DSP_DMA16_OFF : SB_DSP_DMA8_OFF);
		/* next two lines are needed for some types of DSP4 (SB AWE 32 - 4.13) */
		if (chip->mode & SB_RATE_LOCK_CAPTURE)
			FUNC1(chip, chip->mode & SB_MODE_CAPTURE_16 ? SB_DSP_DMA16_ON : SB_DSP_DMA8_ON);
		chip->mode &= ~SB_RATE_LOCK_PLAYBACK;
		break;
	default:
		result = -EINVAL;
	}
	FUNC3(&chip->reg_lock);
	return result;
}