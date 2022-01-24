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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct edmacc_param {int opt; int link_bcntrld; } ;
struct davinci_runtime_data {int master_lch; int slave_lch; TYPE_2__* params; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {struct davinci_runtime_data* private_data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EDMA_SLOT_ANY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  EVENTQ_0 ; 
 int TCINTEN ; 
 int /*<<< orphan*/  davinci_pcm_dma_irq ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct edmacc_param*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct edmacc_param*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct davinci_runtime_data *prtd = substream->runtime->private_data;
	struct edmacc_param p_ram;
	int ret;

	/* Request master DMA channel */
	ret = FUNC3(prtd->params->channel,
				  davinci_pcm_dma_irq, substream,
				  EVENTQ_0);
	if (ret < 0)
		return ret;
	prtd->master_lch = ret;

	/* Request parameter RAM reload slot */
	ret = FUNC4(FUNC1(prtd->master_lch), EDMA_SLOT_ANY);
	if (ret < 0) {
		FUNC5(prtd->master_lch);
		return ret;
	}
	prtd->slave_lch = ret;

	/* Issue transfer completion IRQ when the channel completes a
	 * transfer, then always reload from the same slot (by a kind
	 * of loopback link).  The completion IRQ handler will update
	 * the reload slot with a new buffer.
	 *
	 * REVISIT save p_ram here after setting up everything except
	 * the buffer and its length (ccnt) ... use it as a template
	 * so davinci_pcm_enqueue_dma() takes less time in IRQ.
	 */
	FUNC6(prtd->slave_lch, &p_ram);
	p_ram.opt |= TCINTEN | FUNC2(FUNC0(prtd->master_lch));
	p_ram.link_bcntrld = FUNC0(prtd->slave_lch) << 5;
	FUNC7(prtd->slave_lch, &p_ram);

	return 0;
}