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
struct snd_sb {int mode; int /*<<< orphan*/  capture_format; struct snd_pcm_substream* capture_substream; int /*<<< orphan*/  playback_format; struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SB_DSP_INPUT ; 
 int /*<<< orphan*/  SB_DSP_OUTPUT ; 
#define  SB_MODE_CAPTURE_8 129 
#define  SB_MODE_PLAYBACK_8 128 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_START ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*) ; 

irqreturn_t FUNC4(struct snd_sb *chip)
{
	struct snd_pcm_substream *substream;
	struct snd_pcm_runtime *runtime;

	FUNC3(chip);
	switch (chip->mode) {
	case SB_MODE_PLAYBACK_8:	/* ok.. playback is active */
		substream = chip->playback_substream;
		runtime = substream->runtime;
		if (chip->playback_format == SB_DSP_OUTPUT)
		    	FUNC2(substream, SNDRV_PCM_TRIGGER_START);
		FUNC0(substream);
		break;
	case SB_MODE_CAPTURE_8:
		substream = chip->capture_substream;
		runtime = substream->runtime;
		if (chip->capture_format == SB_DSP_INPUT)
		    	FUNC1(substream, SNDRV_PCM_TRIGGER_START);
		FUNC0(substream);
		break;
	}
	return IRQ_HANDLED;
}