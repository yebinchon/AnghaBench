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
struct TYPE_2__ {struct device* dev; int /*<<< orphan*/  type; } ;
struct snd_dma_buffer {size_t bytes; int /*<<< orphan*/ * area; int /*<<< orphan*/ * private_data; int /*<<< orphan*/  addr; TYPE_1__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; struct snd_dma_buffer* dma_buffer_p; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/ * FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dma_buffer*) ; 
 struct snd_dma_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,struct snd_dma_buffer*) ; 

int FUNC5(struct device *dev, struct snd_pcm_substream *substream, size_t size)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_dma_buffer *buf = runtime->dma_buffer_p;
	int ret = 0;

	if (buf) {
		if (buf->bytes >= size)
			goto out;
		FUNC0(dev, substream);
	}

	if (substream->dma_buffer.area != NULL && substream->dma_buffer.bytes >= size) {
		buf = &substream->dma_buffer;
	} else {
		buf = FUNC3(sizeof(struct snd_dma_buffer), GFP_KERNEL);
		if (!buf)
			goto nomem;

		buf->dev.type = SNDRV_DMA_TYPE_DEV;
		buf->dev.dev = dev;
		buf->area = FUNC1(dev, size, &buf->addr, GFP_KERNEL);
		buf->bytes = size;
		buf->private_data = NULL;

		if (!buf->area)
			goto free;
	}
	FUNC4(substream, buf);
	ret = 1;
 out:
	runtime->dma_bytes = size;
	return ret;

 free:
	FUNC2(buf);
 nomem:
	return -ENOMEM;
}