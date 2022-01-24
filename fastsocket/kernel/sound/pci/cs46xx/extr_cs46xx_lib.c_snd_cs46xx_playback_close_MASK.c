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
struct snd_pcm_runtime {struct snd_cs46xx_pcm* private_data; } ;
struct snd_cs46xx_pcm {int /*<<< orphan*/  hw_buf; int /*<<< orphan*/ * substream; int /*<<< orphan*/ * pcm_channel; } ;
struct snd_cs46xx {int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/ * playback_pcm; int /*<<< orphan*/  spos_mutex; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_cs46xx* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_cs46xx*,int) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_cs46xx *chip = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_cs46xx_pcm * cpcm;

	cpcm = runtime->private_data;

	/* when playback_open fails, then cpcm can be NULL */
	if (!cpcm) return -ENXIO;

#ifdef CONFIG_SND_CS46XX_NEW_DSP
	mutex_lock(&chip->spos_mutex);
	if (cpcm->pcm_channel) {
		cs46xx_dsp_destroy_pcm_channel(chip,cpcm->pcm_channel);
		cpcm->pcm_channel = NULL;
	}
	mutex_unlock(&chip->spos_mutex);
#else
	chip->playback_pcm = NULL;
#endif

	cpcm->substream = NULL;
	FUNC3(&cpcm->hw_buf);
	chip->active_ctrl(chip, -1);

	return 0;
}