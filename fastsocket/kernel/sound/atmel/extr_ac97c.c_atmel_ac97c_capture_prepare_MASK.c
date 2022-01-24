#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; int rate; } ;
struct atmel_ac97c {int /*<<< orphan*/  flags; TYPE_1__* pdev; int /*<<< orphan*/  ac97; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long AC97C_CMR_CEM_LITTLE ; 
 unsigned long AC97C_CMR_DMAEN ; 
 unsigned long AC97C_CMR_SIZE_16 ; 
 unsigned long AC97C_CSR_OVRUN ; 
 unsigned long AC97C_MR_VRA ; 
 unsigned long AC97C_SR_CAEVT ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  CAMR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_RX_READY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ICA ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  PCM_LEFT ; 
 int /*<<< orphan*/  PCM_RIGHT ; 
#define  SNDRV_PCM_FORMAT_S16_BE 129 
#define  SNDRV_PCM_FORMAT_S16_LE 128 
 unsigned long FUNC2 (struct atmel_ac97c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_ac97c*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct atmel_ac97c*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct atmel_ac97c* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct atmel_ac97c *chip = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long word = FUNC2(chip, ICA);
	int retval;

	word &= ~(FUNC1(PCM_LEFT) | FUNC1(PCM_RIGHT));

	/* assign channels to AC97C channel A */
	switch (runtime->channels) {
	case 1:
		word |= FUNC0(PCM_LEFT, A);
		break;
	case 2:
		word |= FUNC0(PCM_LEFT, A)
			| FUNC0(PCM_RIGHT, A);
		break;
	default:
		/* TODO: support more than two channels */
		return -EINVAL;
	}
	FUNC3(chip, ICA, word);

	/* configure sample format and size */
	word = AC97C_CMR_DMAEN | AC97C_CMR_SIZE_16;

	switch (runtime->format) {
	case SNDRV_PCM_FORMAT_S16_LE:
		word |= AC97C_CMR_CEM_LITTLE;
		break;
	case SNDRV_PCM_FORMAT_S16_BE: /* fall through */
		word &= ~(AC97C_CMR_CEM_LITTLE);
		break;
	default:
		word = FUNC2(chip, ICA);
		word &= ~(FUNC1(PCM_LEFT) | FUNC1(PCM_RIGHT));
		FUNC3(chip, ICA, word);
		return -EINVAL;
	}

	/* Enable overrun interrupt on channel A */
	word |= AC97C_CSR_OVRUN;

	FUNC3(chip, CAMR, word);

	/* Enable channel A event interrupt */
	word = FUNC2(chip, IMR);
	word |= AC97C_SR_CAEVT;
	FUNC3(chip, IER, word);

	/* set variable rate if needed */
	if (runtime->rate != 48000) {
		word = FUNC2(chip, MR);
		word |= AC97C_MR_VRA;
		FUNC3(chip, MR, word);
	} else {
		word = FUNC2(chip, MR);
		word &= ~(AC97C_MR_VRA);
		FUNC3(chip, MR, word);
	}

	retval = FUNC6(chip->ac97, AC97_PCM_LR_ADC_RATE,
			runtime->rate);
	if (retval)
		FUNC5(&chip->pdev->dev, "could not set rate %d Hz\n",
				runtime->rate);

	if (!FUNC8(DMA_RX_READY, &chip->flags))
		retval = FUNC4(chip, substream,
				DMA_FROM_DEVICE);

	return retval;
}