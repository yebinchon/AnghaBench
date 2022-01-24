#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_ssc_info {int dir_mask; int /*<<< orphan*/  lock; scalar_t__ rcmr_period; scalar_t__ tcmr_period; scalar_t__ cmr_div; TYPE_4__* ssc; scalar_t__ initialized; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {int /*<<< orphan*/ * substream; int /*<<< orphan*/ * ssc; TYPE_3__* mask; } ;
struct TYPE_8__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; } ;
struct TYPE_7__ {int /*<<< orphan*/  ssc_disable; } ;
struct TYPE_6__ {TYPE_1__* cpu_dai; } ;
struct TYPE_5__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  CR_SWRST ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct atmel_ssc_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct snd_soc_pcm_runtime* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct atmel_ssc_info* ssc_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = FUNC4(substream);
	struct atmel_ssc_info *ssc_p = &ssc_info[rtd->dai->cpu_dai->id];
	struct atmel_pcm_dma_params *dma_params;
	int dir, dir_mask;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		dir = 0;
	else
		dir = 1;

	dma_params = ssc_p->dma_params[dir];

	if (dma_params != NULL) {
		FUNC8(ssc_p->ssc->regs, CR, dma_params->mask->ssc_disable);
		FUNC3("atmel_ssc_shutdown: %s disabled SSC_SR=0x%08x\n",
			(dir ? "receive" : "transmit"),
			FUNC7(ssc_p->ssc->regs, SR));

		dma_params->ssc = NULL;
		dma_params->substream = NULL;
		ssc_p->dma_params[dir] = NULL;
	}

	dir_mask = 1 << dir;

	FUNC5(&ssc_p->lock);
	ssc_p->dir_mask &= ~dir_mask;
	if (!ssc_p->dir_mask) {
		if (ssc_p->initialized) {
			/* Shutdown the SSC clock. */
			FUNC3("atmel_ssc_dau: Stopping clock\n");
			FUNC1(ssc_p->ssc->clk);

			FUNC2(ssc_p->ssc->irq, ssc_p);
			ssc_p->initialized = 0;
		}

		/* Reset the SSC */
		FUNC8(ssc_p->ssc->regs, CR, FUNC0(CR_SWRST));
		/* Clear the SSC dividers */
		ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
	}
	FUNC6(&ssc_p->lock);
}