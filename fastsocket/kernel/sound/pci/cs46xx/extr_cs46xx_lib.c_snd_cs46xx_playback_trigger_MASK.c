#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_cs46xx_pcm {TYPE_3__* pcm_channel; } ;
struct snd_cs46xx {unsigned int play_ctl; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  unlinked; TYPE_2__* pcm_reader_scb; } ;
struct TYPE_6__ {int address; } ;
struct TYPE_5__ {int /*<<< orphan*/  periods; struct snd_cs46xx_pcm* private_data; } ;

/* Variables and functions */
 int BA1_PCTL ; 
 int /*<<< orphan*/  CS46XX_FRAGS ; 
 int EINVAL ; 
 int ENXIO ; 
 int SCBVolumeCtrl ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,TYPE_3__*) ; 
 unsigned int FUNC2 (struct snd_cs46xx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs46xx*,int,unsigned int) ; 
 struct snd_cs46xx* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				       int cmd)
{
	struct snd_cs46xx *chip = FUNC5(substream);
	/*struct snd_pcm_runtime *runtime = substream->runtime;*/
	int result = 0;

#ifdef CONFIG_SND_CS46XX_NEW_DSP
	struct snd_cs46xx_pcm *cpcm = substream->runtime->private_data;
	if (! cpcm->pcm_channel) {
		return -ENXIO;
	}
#endif
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
#ifdef CONFIG_SND_CS46XX_NEW_DSP
		/* magic value to unmute PCM stream  playback volume */
		snd_cs46xx_poke(chip, (cpcm->pcm_channel->pcm_reader_scb->address + 
				       SCBVolumeCtrl) << 2, 0x80008000);

		if (cpcm->pcm_channel->unlinked)
			cs46xx_dsp_pcm_link(chip,cpcm->pcm_channel);

		if (substream->runtime->periods != CS46XX_FRAGS)
			snd_cs46xx_playback_transfer(substream);
#else
		FUNC6(&chip->reg_lock);
		if (substream->runtime->periods != CS46XX_FRAGS)
			FUNC3(substream);
		{ unsigned int tmp;
		tmp = FUNC2(chip, BA1_PCTL);
		tmp &= 0x0000ffff;
		FUNC4(chip, BA1_PCTL, chip->play_ctl | tmp);
		}
		FUNC7(&chip->reg_lock);
#endif
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
#ifdef CONFIG_SND_CS46XX_NEW_DSP
		/* magic mute channel */
		snd_cs46xx_poke(chip, (cpcm->pcm_channel->pcm_reader_scb->address + 
				       SCBVolumeCtrl) << 2, 0xffffffff);

		if (!cpcm->pcm_channel->unlinked)
			cs46xx_dsp_pcm_unlink(chip,cpcm->pcm_channel);
#else
		FUNC6(&chip->reg_lock);
		{ unsigned int tmp;
		tmp = FUNC2(chip, BA1_PCTL);
		tmp &= 0x0000ffff;
		FUNC4(chip, BA1_PCTL, tmp);
		}
		FUNC7(&chip->reg_lock);
#endif
		break;
	default:
		result = -EINVAL;
		break;
	}

	return result;
}