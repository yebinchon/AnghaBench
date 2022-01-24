#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct pxa2xx_runtime_data* private_data; int /*<<< orphan*/  hw; } ;
struct pxa2xx_runtime_data {int /*<<< orphan*/  dma_desc_array; int /*<<< orphan*/  dma_desc_array_phys; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa2xx_runtime_data*) ; 
 struct pxa2xx_runtime_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pxa2xx_pcm_hardware ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct pxa2xx_runtime_data *rtd;
	int ret;

	runtime->hw = pxa2xx_pcm_hardware;

	/*
	 * For mysterious reasons (and despite what the manual says)
	 * playback samples are lost if the DMA count is not a multiple
	 * of the DMA burst size.  Let's add a rule to enforce that.
	 */
	ret = FUNC4(runtime, 0,
		SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
	if (ret)
		goto out;

	ret = FUNC4(runtime, 0,
		SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
	if (ret)
		goto out;

	ret = FUNC3(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0)
		goto out;

	ret = -ENOMEM;
	rtd = FUNC2(sizeof(*rtd), GFP_KERNEL);
	if (!rtd)
		goto out;
	rtd->dma_desc_array =
		FUNC0(substream->pcm->card->dev, PAGE_SIZE,
				       &rtd->dma_desc_array_phys, GFP_KERNEL);
	if (!rtd->dma_desc_array)
		goto err1;

	runtime->private_data = rtd;
	return 0;

 err1:
	FUNC1(rtd);
 out:
	return ret;
}