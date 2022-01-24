#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int period_index; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int OMAP_DMA_BLOCK_IRQ ; 
 int OMAP_DMA_LAST_IRQ ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(int ch, u16 stat, void *data)
{
	struct snd_pcm_substream *substream = data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct omap_runtime_data *prtd = runtime->private_data;
	unsigned long flags;

	if ((FUNC0()) &&
			(substream->stream == SNDRV_PCM_STREAM_PLAYBACK)) {
		/*
		 * OMAP1510 doesn't fully support DMA progress counter
		 * and there is no software emulation implemented yet,
		 * so have to maintain our own playback progress counter
		 * that can be used by omap_pcm_pointer() instead.
		 */
		FUNC2(&prtd->lock, flags);
		if ((stat == OMAP_DMA_LAST_IRQ) &&
				(prtd->period_index == runtime->periods - 1)) {
			/* we are in sync, do nothing */
			FUNC3(&prtd->lock, flags);
			return;
		}
		if (prtd->period_index >= 0) {
			if (stat & OMAP_DMA_BLOCK_IRQ) {
				/* end of buffer reached, loop back */
				prtd->period_index = 0;
			} else if (stat & OMAP_DMA_LAST_IRQ) {
				/* update the counter for the last period */
				prtd->period_index = runtime->periods - 1;
			} else if (++prtd->period_index >= runtime->periods) {
				/* end of buffer missed? loop back */
				prtd->period_index = 0;
			}
		}
		FUNC3(&prtd->lock, flags);
	}

	FUNC1(substream);
}