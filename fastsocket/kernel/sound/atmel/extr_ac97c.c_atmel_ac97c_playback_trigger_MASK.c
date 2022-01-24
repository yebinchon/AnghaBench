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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_chan; } ;
struct atmel_ac97c {int opened; TYPE_1__ dma; } ;

/* Variables and functions */
 unsigned long AC97C_CMR_CENA ; 
 int /*<<< orphan*/  CAMR ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 unsigned long FUNC0 (struct atmel_ac97c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_ac97c*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct atmel_ac97c* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	struct atmel_ac97c *chip = FUNC4(substream);
	unsigned long camr;
	int retval = 0;

	camr = FUNC0(chip, CAMR);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE: /* fall through */
	case SNDRV_PCM_TRIGGER_RESUME: /* fall through */
	case SNDRV_PCM_TRIGGER_START:
		retval = FUNC2(chip->dma.tx_chan);
		if (retval)
			goto out;
		camr |= AC97C_CMR_CENA;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH: /* fall through */
	case SNDRV_PCM_TRIGGER_SUSPEND: /* fall through */
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC3(chip->dma.tx_chan);
		if (chip->opened <= 1)
			camr &= ~AC97C_CMR_CENA;
		break;
	default:
		retval = -EINVAL;
		goto out;
	}

	FUNC1(chip, CAMR, camr);
out:
	return retval;
}