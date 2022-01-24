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
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm_mixer {int dummy; } ;
struct snd_emu10k1_pcm {int running; int /*<<< orphan*/  extra; int /*<<< orphan*/ * voices; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int,struct snd_emu10k1_pcm_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_emu10k1* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				        int cmd)
{
	struct snd_emu10k1 *emu = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	struct snd_emu10k1_pcm_mixer *mix;
	int result = 0;

	/*
	printk(KERN_DEBUG "trigger - emu10k1 = 0x%x, cmd = %i, pointer = %i\n",
	       (int)emu, cmd, substream->ops->pointer(substream))
	*/
	FUNC5(&emu->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC0(emu, 1, epcm->extra);	/* do we need this? */
		FUNC0(emu, 0, epcm->voices[0]);
		/* follow thru */
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		mix = &emu->pcm_mixer[substream->number];
		FUNC1(emu, epcm->voices[0], 1, 0, mix);
		FUNC1(emu, epcm->voices[1], 0, 0, mix);
		FUNC1(emu, epcm->extra, 1, 1, NULL);
		FUNC3(emu, epcm->voices[0], 1, 0);
		FUNC3(emu, epcm->voices[1], 0, 0);
		FUNC3(emu, epcm->extra, 1, 1);
		epcm->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		epcm->running = 0;
		FUNC2(emu, epcm->voices[0]);
		FUNC2(emu, epcm->voices[1]);
		FUNC2(emu, epcm->extra);
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC6(&emu->reg_lock);
	return result;
}