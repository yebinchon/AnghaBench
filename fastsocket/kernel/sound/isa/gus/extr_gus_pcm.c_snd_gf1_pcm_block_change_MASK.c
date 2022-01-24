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
struct snd_pcm_runtime {scalar_t__ dma_addr; scalar_t__ dma_area; int /*<<< orphan*/  format; struct gus_pcm_private* private_data; } ;
struct snd_gf1_dma_block {unsigned int addr; unsigned int count; int /*<<< orphan*/  ack; struct gus_pcm_private* private_data; scalar_t__ buf_addr; scalar_t__ buffer; int /*<<< orphan*/  cmd; } ;
struct gus_pcm_private {int /*<<< orphan*/  dma_count; int /*<<< orphan*/  gus; } ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_DMA_16BIT ; 
 int /*<<< orphan*/  SNDRV_GF1_DMA_IRQ ; 
 int /*<<< orphan*/  SNDRV_GF1_DMA_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gf1_dma_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct snd_gf1_dma_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_gf1_pcm_block_change_ack ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				    unsigned int offset,
				    unsigned int addr,
				    unsigned int count)
{
	struct snd_gf1_dma_block block;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct gus_pcm_private *pcmp = runtime->private_data;

	count += offset & 31;
	offset &= ~31;
	/*
	snd_printk(KERN_DEBUG "block change - offset = 0x%x, count = 0x%x\n",
		   offset, count);
	*/
	FUNC1(&block, 0, sizeof(block));
	block.cmd = SNDRV_GF1_DMA_IRQ;
	if (FUNC3(runtime->format))
		block.cmd |= SNDRV_GF1_DMA_UNSIGNED;
	if (FUNC4(runtime->format) == 16)
		block.cmd |= SNDRV_GF1_DMA_16BIT;
	block.addr = addr & ~31;
	block.buffer = runtime->dma_area + offset;
	block.buf_addr = runtime->dma_addr + offset;
	block.count = count;
	block.private_data = pcmp;
	block.ack = snd_gf1_pcm_block_change_ack;
	if (!FUNC2(pcmp->gus, &block, 0, 0))
		FUNC0(&pcmp->dma_count);
	return 0;
}