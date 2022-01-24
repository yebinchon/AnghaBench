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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; scalar_t__ dma_area; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *subs, size_t size)
{
	struct snd_pcm_runtime *runtime = subs->runtime;
	if (runtime->dma_area) {
		if (runtime->dma_bytes >= size)
			return 0; /* already enough large */
		FUNC0(runtime->dma_area);
	}
	runtime->dma_area = FUNC1(size);
	if (! runtime->dma_area)
		return -ENOMEM;
	runtime->dma_bytes = size;
	return 0;
}