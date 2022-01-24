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
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  format; struct esschan* private_data; } ;
struct esschan {int wav_shift; int fmt; int mode; int /*<<< orphan*/  bob_freq; int /*<<< orphan*/  frag_size; int /*<<< orphan*/  dma_size; } ;
struct es1968 {int dummy; } ;

/* Variables and functions */
#define  ESM_MODE_CAPTURE 129 
#define  ESM_MODE_PLAY 128 
 int ESS_FMT_16BIT ; 
 int ESS_FMT_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 struct es1968* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct es1968 *chip = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct esschan *es = runtime->private_data;

	es->dma_size = FUNC4(substream);
	es->frag_size = FUNC5(substream);

	es->wav_shift = 1; /* maestro handles always 16bit */
	es->fmt = 0;
	if (FUNC3(runtime->format) == 16)
		es->fmt |= ESS_FMT_16BIT;
	if (runtime->channels > 1) {
		es->fmt |= ESS_FMT_STEREO;
		if (es->fmt & ESS_FMT_16BIT) /* 8bit is already word shifted */
			es->wav_shift++;
	}
	es->bob_freq = FUNC0(chip, es, runtime);

	switch (es->mode) {
	case ESM_MODE_PLAY:
		FUNC2(chip, es, runtime);
		break;
	case ESM_MODE_CAPTURE:
		FUNC1(chip, es, runtime);
		break;
	}

	return 0;
}