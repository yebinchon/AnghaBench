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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  dev; } ;
struct snd_dma_buffer {size_t bytes; TYPE_2__ dev; int /*<<< orphan*/ * area; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; TYPE_1__* dma_buffer_p; } ;
struct TYPE_3__ {size_t bytes; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 scalar_t__ SNDRV_DMA_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dma_buffer*) ; 
 struct snd_dma_buffer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t,struct snd_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,struct snd_dma_buffer*) ; 

int FUNC7(struct snd_pcm_substream *substream, size_t size)
{
	struct snd_pcm_runtime *runtime;
	struct snd_dma_buffer *dmab = NULL;

	if (FUNC0(substream))
		return -EINVAL;
	if (FUNC3(substream->dma_buffer.dev.type ==
		       SNDRV_DMA_TYPE_UNKNOWN))
		return -EINVAL;
	runtime = substream->runtime;

	if (runtime->dma_buffer_p) {
		/* perphaps, we might free the large DMA memory region
		   to save some space here, but the actual solution
		   costs us less time */
		if (runtime->dma_buffer_p->bytes >= size) {
			runtime->dma_bytes = size;
			return 0;	/* ok, do not change */
		}
		FUNC5(substream);
	}
	if (substream->dma_buffer.area != NULL &&
	    substream->dma_buffer.bytes >= size) {
		dmab = &substream->dma_buffer; /* use the pre-allocated buffer */
	} else {
		dmab = FUNC2(sizeof(*dmab), GFP_KERNEL);
		if (! dmab)
			return -ENOMEM;
		dmab->dev = substream->dma_buffer.dev;
		if (FUNC4(substream->dma_buffer.dev.type,
					substream->dma_buffer.dev.dev,
					size, dmab) < 0) {
			FUNC1(dmab);
			return -ENOMEM;
		}
	}
	FUNC6(substream, dmab);
	runtime->dma_bytes = size;
	return 1;			/* area was changed */
}