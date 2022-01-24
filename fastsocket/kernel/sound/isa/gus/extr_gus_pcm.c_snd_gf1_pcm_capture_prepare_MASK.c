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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; scalar_t__ rate_den; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma2; } ;
struct snd_gus_card {int /*<<< orphan*/  c_period_size; TYPE_1__ gf1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_RECORD_RATE ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_REC_DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_gus_card*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct snd_gus_card* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_gus_card *gus = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC2(gus, SNDRV_GF1_GB_RECORD_RATE, runtime->rate_den - 2);
	FUNC2(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, 0);	/* disable sampling */
	FUNC1(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);	/* Sampling Control Register */
	FUNC0(gus->gf1.dma2, runtime->dma_addr, gus->c_period_size, DMA_MODE_READ);
	return 0;
}