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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;
struct snd_dma_buffer {size_t bytes; TYPE_1__ dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  dma_buf_id; struct snd_dma_buffer dma_buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct snd_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dma_buffer*) ; 
 scalar_t__ FUNC2 (struct snd_dma_buffer*,int /*<<< orphan*/ ) ; 
 size_t snd_minimum_buffer ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, size_t size)
{
	struct snd_dma_buffer *dmab = &substream->dma_buffer;
	int err;

	/* already reserved? */
	if (FUNC2(dmab, substream->dma_buf_id) > 0) {
		if (dmab->bytes >= size)
			return 0; /* yes */
		/* no, free the reserved block */
		FUNC1(dmab);
		dmab->bytes = 0;
	}

	do {
		if ((err = FUNC0(dmab->dev.type, dmab->dev.dev,
					       size, dmab)) < 0) {
			if (err != -ENOMEM)
				return err; /* fatal error */
		} else
			return 0;
		size >>= 1;
	} while (size >= snd_minimum_buffer);
	dmab->bytes = 0; /* tell error */
	return 0;
}