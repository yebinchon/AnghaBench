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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; int /*<<< orphan*/  extra; int /*<<< orphan*/ * voices; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * efx_pcm_mixer; } ;

/* Variables and functions */
 int EINVAL ; 
 int NUM_EFX_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
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
	int i;
	int result = 0;

	FUNC5(&emu->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* prepare voices */
		for (i = 0; i < NUM_EFX_PLAYBACK; i++) {	
			FUNC0(emu, 0, epcm->voices[i]);
		}
		FUNC0(emu, 1, epcm->extra);

		/* follow thru */
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC1(emu, epcm->extra, 1, 1, NULL);
		FUNC1(emu, epcm->voices[0], 0, 0,
						   &emu->efx_pcm_mixer[0]);
		for (i = 1; i < NUM_EFX_PLAYBACK; i++)
			FUNC1(emu, epcm->voices[i], 0, 0,
							   &emu->efx_pcm_mixer[i]);
		FUNC3(emu, epcm->voices[0], 0, 0);
		FUNC3(emu, epcm->extra, 1, 1);
		for (i = 1; i < NUM_EFX_PLAYBACK; i++)
			FUNC3(emu, epcm->voices[i], 0, 0);
		epcm->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		epcm->running = 0;
		for (i = 0; i < NUM_EFX_PLAYBACK; i++) {	
			FUNC2(emu, epcm->voices[i]);
		}
		FUNC2(emu, epcm->extra);
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC6(&emu->reg_lock);
	return result;
}