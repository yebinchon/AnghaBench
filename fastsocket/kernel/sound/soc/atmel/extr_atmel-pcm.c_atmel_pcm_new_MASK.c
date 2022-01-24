#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_4__ {scalar_t__ channels_min; } ;
struct snd_soc_dai {TYPE_2__ capture; TYPE_1__ playback; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {TYPE_3__* dev; } ;
struct TYPE_6__ {int coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  atmel_pcm_dmamask ; 
 int FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card,
	struct snd_soc_dai *dai, struct snd_pcm *pcm)
{
	int ret = 0;

	if (!card->dev->dma_mask)
		card->dev->dma_mask = &atmel_pcm_dmamask;
	if (!card->dev->coherent_dma_mask)
		card->dev->coherent_dma_mask = 0xffffffff;

	if (dai->playback.channels_min) {
		ret = FUNC0(pcm,
			SNDRV_PCM_STREAM_PLAYBACK);
		if (ret)
			goto out;
	}

	if (dai->capture.channels_min) {
		FUNC1("at32-pcm:"
				"Allocating PCM capture DMA buffer\n");
		ret = FUNC0(pcm,
			SNDRV_PCM_STREAM_CAPTURE);
		if (ret)
			goto out;
	}
 out:
	return ret;
}