#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;
struct snd_dma_buffer {size_t bytes; scalar_t__ area; scalar_t__ addr; int /*<<< orphan*/ * private_data; TYPE_2__ dev; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_3__* card; TYPE_1__* streams; } ;
struct TYPE_8__ {size_t buffer_bytes_max; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 TYPE_4__ davinci_pcm_hardware ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,void*,size_t) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm *pcm, int stream)
{
	struct snd_pcm_substream *substream = pcm->streams[stream].substream;
	struct snd_dma_buffer *buf = &substream->dma_buffer;
	size_t size = davinci_pcm_hardware.buffer_bytes_max;

	buf->dev.type = SNDRV_DMA_TYPE_DEV;
	buf->dev.dev = pcm->card->dev;
	buf->private_data = NULL;
	buf->area = FUNC0(pcm->card->dev, size,
					   &buf->addr, GFP_KERNEL);

	FUNC1("davinci_pcm: preallocate_dma_buffer: area=%p, addr=%p, "
		"size=%d\n", (void *) buf->area, (void *) buf->addr, size);

	if (!buf->area)
		return -ENOMEM;

	buf->bytes = size;
	return 0;
}