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
struct snd_pcm_substream {int /*<<< orphan*/  dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/ * dma_buffer_p; int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime;

	if (FUNC0(substream))
		return -EINVAL;
	runtime = substream->runtime;
	if (runtime->dma_area == NULL)
		return 0;
	if (runtime->dma_buffer_p != &substream->dma_buffer) {
		/* it's a newly allocated buffer.  release it now. */
		FUNC2(runtime->dma_buffer_p);
		FUNC1(runtime->dma_buffer_p);
	}
	FUNC3(substream, NULL);
	return 0;
}