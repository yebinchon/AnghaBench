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
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_addr; struct davinci_runtime_data* private_data; } ;
struct davinci_runtime_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  master_lch; } ;
typedef  unsigned int snd_pcm_uframes_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int FUNC0 (struct snd_pcm_runtime*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct davinci_runtime_data *prtd = runtime->private_data;
	unsigned int offset;
	dma_addr_t count;
	dma_addr_t src, dst;

	FUNC2(&prtd->lock);

	FUNC1(prtd->master_lch, &src, &dst);
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		count = src - runtime->dma_addr;
	else
		count = dst - runtime->dma_addr;

	FUNC3(&prtd->lock);

	offset = FUNC0(runtime, count);
	if (offset >= runtime->buffer_size)
		offset = 0;

	return offset;
}