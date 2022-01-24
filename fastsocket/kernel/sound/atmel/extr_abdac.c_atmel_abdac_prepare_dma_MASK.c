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
struct dw_cyclic_desc {struct atmel_abdac* period_callback_param; int /*<<< orphan*/  period_callback; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {struct dw_cyclic_desc* cdesc; struct dma_chan* chan; } ;
struct atmel_abdac {int /*<<< orphan*/  flags; TYPE_2__ dma; TYPE_1__* pdev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_READY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dw_cyclic_desc*) ; 
 int FUNC1 (struct dw_cyclic_desc*) ; 
 int /*<<< orphan*/  atmel_abdac_dma_period_done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct dw_cyclic_desc* FUNC3 (struct dma_chan*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct atmel_abdac *dac,
		struct snd_pcm_substream *substream,
		enum dma_data_direction direction)
{
	struct dma_chan			*chan = dac->dma.chan;
	struct dw_cyclic_desc		*cdesc;
	struct snd_pcm_runtime		*runtime = substream->runtime;
	unsigned long			buffer_len, period_len;

	/*
	 * We don't do DMA on "complex" transfers, i.e. with
	 * non-halfword-aligned buffers or lengths.
	 */
	if (runtime->dma_addr & 1 || runtime->buffer_size & 1) {
		FUNC2(&dac->pdev->dev, "too complex transfer\n");
		return -EINVAL;
	}

	buffer_len = FUNC4(runtime, runtime->buffer_size);
	period_len = FUNC4(runtime, runtime->period_size);

	cdesc = FUNC3(chan, runtime->dma_addr, buffer_len,
			period_len, DMA_TO_DEVICE);
	if (FUNC0(cdesc)) {
		FUNC2(&dac->pdev->dev, "could not prepare cyclic DMA\n");
		return FUNC1(cdesc);
	}

	cdesc->period_callback = atmel_abdac_dma_period_done;
	cdesc->period_callback_param = dac;

	dac->dma.cdesc = cdesc;

	FUNC5(DMA_READY, &dac->flags);

	return 0;
}