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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; scalar_t__ dma_addr; struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int period_index; int /*<<< orphan*/  dma_ch; } ;
typedef  int snd_pcm_uframes_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct snd_pcm_runtime*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct omap_runtime_data *prtd = runtime->private_data;
	dma_addr_t ptr;
	snd_pcm_uframes_t offset;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		ptr = FUNC2(prtd->dma_ch);
		offset = FUNC0(runtime, ptr - runtime->dma_addr);
	} else if (!(FUNC1())) {
		ptr = FUNC3(prtd->dma_ch);
		offset = FUNC0(runtime, ptr - runtime->dma_addr);
	} else
		offset = prtd->period_index * runtime->period_size;

	if (offset >= runtime->buffer_size)
		offset = 0;

	return offset;
}