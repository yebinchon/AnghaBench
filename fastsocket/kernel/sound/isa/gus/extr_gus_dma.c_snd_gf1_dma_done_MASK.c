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
struct TYPE_2__ {int /*<<< orphan*/ * dma_data_synth_last; int /*<<< orphan*/  dma_data_pcm_last; struct snd_gf1_dma_block* dma_data_synth; struct snd_gf1_dma_block* dma_data_pcm; int /*<<< orphan*/  dma1; int /*<<< orphan*/  dma_shared; } ;
struct snd_gus_card {int /*<<< orphan*/  dma_mutex; TYPE_1__ gf1; } ;
struct snd_gf1_dma_block {struct snd_gf1_dma_block* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_HANDLER_DMA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gf1_dma_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_gus_card * gus)
{
	struct snd_gf1_dma_block *block;

	FUNC1(&gus->dma_mutex);
	gus->gf1.dma_shared--;
	if (!gus->gf1.dma_shared) {
		FUNC3(gus->gf1.dma1);
		FUNC5(gus, SNDRV_GF1_HANDLER_DMA_WRITE);
		FUNC4(gus);
		while ((block = gus->gf1.dma_data_pcm)) {
			gus->gf1.dma_data_pcm = block->next;
			FUNC0(block);
		}
		while ((block = gus->gf1.dma_data_synth)) {
			gus->gf1.dma_data_synth = block->next;
			FUNC0(block);
		}
		gus->gf1.dma_data_pcm_last =
		*(gus->gf1.dma_data_synth_last = NULL);
	}
	FUNC2(&gus->dma_mutex);
	return 0;
}