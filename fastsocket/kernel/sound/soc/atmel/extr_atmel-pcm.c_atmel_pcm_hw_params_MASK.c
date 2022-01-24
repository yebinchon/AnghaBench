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
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; struct atmel_runtime_data* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atmel_runtime_data {int /*<<< orphan*/  period_size; TYPE_3__* params; scalar_t__ dma_buffer_end; scalar_t__ dma_buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dma_intr_handler; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {TYPE_3__* dma_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  atmel_pcm_dma_irq ; 
 scalar_t__ FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct atmel_runtime_data *prtd = runtime->private_data;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;

	/* this may get called several times by oss emulation
	 * with different params */

	FUNC3(substream, &substream->dma_buffer);
	runtime->dma_bytes = FUNC0(params);

	prtd->params = rtd->dai->cpu_dai->dma_data;
	prtd->params->dma_intr_handler = atmel_pcm_dma_irq;

	prtd->dma_buffer = runtime->dma_addr;
	prtd->dma_buffer_end = runtime->dma_addr + runtime->dma_bytes;
	prtd->period_size = FUNC1(params);

	FUNC2("atmel-pcm: "
		"hw_params: DMA for %s initialized "
		"(dma_bytes=%u, period_size=%u)\n",
		prtd->params->name,
		runtime->dma_bytes,
		prtd->period_size);
	return 0;
}