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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int buffer_size; int period_size; } ;
struct dw_cyclic_desc {struct atmel_ac97c* period_callback_param; int /*<<< orphan*/  period_callback; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {struct dma_chan* rx_chan; struct dma_chan* tx_chan; } ;
struct atmel_ac97c {int /*<<< orphan*/  flags; TYPE_2__* pdev; TYPE_1__ dma; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RX_READY ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DMA_TX_READY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dw_cyclic_desc*) ; 
 int FUNC1 (struct dw_cyclic_desc*) ; 
 int /*<<< orphan*/  atmel_ac97c_dma_capture_period_done ; 
 int /*<<< orphan*/  atmel_ac97c_dma_playback_period_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct dw_cyclic_desc* FUNC3 (struct dma_chan*,int,unsigned long,unsigned long,int) ; 
 unsigned long FUNC4 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct atmel_ac97c *chip,
		struct snd_pcm_substream *substream,
		enum dma_data_direction direction)
{
	struct dma_chan			*chan;
	struct dw_cyclic_desc		*cdesc;
	struct snd_pcm_runtime		*runtime = substream->runtime;
	unsigned long			buffer_len, period_len;

	/*
	 * We don't do DMA on "complex" transfers, i.e. with
	 * non-halfword-aligned buffers or lengths.
	 */
	if (runtime->dma_addr & 1 || runtime->buffer_size & 1) {
		FUNC2(&chip->pdev->dev, "too complex transfer\n");
		return -EINVAL;
	}

	if (direction == DMA_TO_DEVICE)
		chan = chip->dma.tx_chan;
	else
		chan = chip->dma.rx_chan;

	buffer_len = FUNC4(runtime, runtime->buffer_size);
	period_len = FUNC4(runtime, runtime->period_size);

	cdesc = FUNC3(chan, runtime->dma_addr, buffer_len,
			period_len, direction);
	if (FUNC0(cdesc)) {
		FUNC2(&chip->pdev->dev, "could not prepare cyclic DMA\n");
		return FUNC1(cdesc);
	}

	if (direction == DMA_TO_DEVICE) {
		cdesc->period_callback = atmel_ac97c_dma_playback_period_done;
		FUNC5(DMA_TX_READY, &chip->flags);
	} else {
		cdesc->period_callback = atmel_ac97c_dma_capture_period_done;
		FUNC5(DMA_RX_READY, &chip->flags);
	}

	cdesc->period_callback_param = chip;

	return 0;
}