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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct atiixp_dma* private_data; } ;
struct atiixp_modem {scalar_t__ remap_addr; } ;
struct atiixp_dma {unsigned int buf_addr; unsigned int buf_bytes; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ dt_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 struct atiixp_modem* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct atiixp_modem *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct atiixp_dma *dma = runtime->private_data;
	unsigned int curptr;
	int timeout = 1000;

	while (timeout--) {
		curptr = FUNC1(chip->remap_addr + dma->ops->dt_cur);
		if (curptr < dma->buf_addr)
			continue;
		curptr -= dma->buf_addr;
		if (curptr >= dma->buf_bytes)
			continue;
		return FUNC0(runtime, curptr);
	}
	FUNC3("atiixp-modem: invalid DMA pointer read 0x%x (buf=%x)\n",
		   FUNC1(chip->remap_addr + dma->ops->dt_cur), dma->buf_addr);
	return 0;
}