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
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_addr; struct pxa2xx_runtime_data* private_data; } ;
struct pxa2xx_runtime_data {int /*<<< orphan*/  dma_ch; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC2 (struct snd_pcm_runtime*,scalar_t__) ; 

snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct pxa2xx_runtime_data *prtd = runtime->private_data;

	dma_addr_t ptr = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
			 FUNC0(prtd->dma_ch) : FUNC1(prtd->dma_ch);
	snd_pcm_uframes_t x = FUNC2(runtime, ptr - runtime->dma_addr);

	if (x == runtime->buffer_size)
		x = 0;
	return x;
}