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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_area; int /*<<< orphan*/  buffer_size; struct atmel_runtime_data* private_data; } ;
struct atmel_runtime_data {int period_ptr; int dma_buffer; int period_size; struct atmel_pcm_dma_params* params; } ;
struct atmel_pcm_dma_params {int pdc_xfer_size; TYPE_3__* mask; TYPE_2__* ssc; TYPE_1__* pdc; } ;
struct TYPE_6__ {int ssc_endx; int ssc_endbuf; int pdc_enable; int pdc_disable; } ;
struct TYPE_5__ {int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  xncr; int /*<<< orphan*/  xnpr; int /*<<< orphan*/  xcr; int /*<<< orphan*/  xpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  SSC_IER ; 
 int /*<<< orphan*/  SSC_PDC_PTCR ; 
 int /*<<< orphan*/  SSC_SR ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
	int cmd)
{
	struct snd_pcm_runtime *rtd = substream->runtime;
	struct atmel_runtime_data *prtd = rtd->private_data;
	struct atmel_pcm_dma_params *params = prtd->params;
	int ret = 0;

	FUNC0("atmel-pcm:buffer_size = %ld,"
		"dma_area = %p, dma_bytes = %u\n",
		rtd->buffer_size, rtd->dma_area, rtd->dma_bytes);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		prtd->period_ptr = prtd->dma_buffer;

		FUNC2(params->ssc->regs, params->pdc->xpr,
			   prtd->period_ptr);
		FUNC2(params->ssc->regs, params->pdc->xcr,
			   prtd->period_size / params->pdc_xfer_size);

		prtd->period_ptr += prtd->period_size;
		FUNC2(params->ssc->regs, params->pdc->xnpr,
			   prtd->period_ptr);
		FUNC2(params->ssc->regs, params->pdc->xncr,
			   prtd->period_size / params->pdc_xfer_size);

		FUNC0("atmel-pcm: trigger: "
			"period_ptr=%lx, xpr=%u, "
			"xcr=%u, xnpr=%u, xncr=%u\n",
			(unsigned long)prtd->period_ptr,
			FUNC1(params->ssc->regs, params->pdc->xpr),
			FUNC1(params->ssc->regs, params->pdc->xcr),
			FUNC1(params->ssc->regs, params->pdc->xnpr),
			FUNC1(params->ssc->regs, params->pdc->xncr));

		FUNC2(params->ssc->regs, SSC_IER,
			   params->mask->ssc_endx | params->mask->ssc_endbuf);
		FUNC2(params->ssc->regs, SSC_PDC_PTCR,
			   params->mask->pdc_enable);

		FUNC0("sr=%u imr=%u\n",
			FUNC1(params->ssc->regs, SSC_SR),
			FUNC1(params->ssc->regs, SSC_IER));
		break;		/* SNDRV_PCM_TRIGGER_START */

	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC2(params->ssc->regs, ATMEL_PDC_PTCR,
			   params->mask->pdc_disable);
		break;

	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC2(params->ssc->regs, ATMEL_PDC_PTCR,
			   params->mask->pdc_enable);
		break;

	default:
		ret = -EINVAL;
	}

	return ret;
}