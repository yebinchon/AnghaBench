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
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;
struct snd_es18xx {unsigned int dma2_size; int /*<<< orphan*/  dma2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC2 ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_es18xx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_es18xx*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_es18xx*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct snd_pcm_substream*) ; 
 unsigned int FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_es18xx *chip,
					struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int size = FUNC6(substream);
	unsigned int count = FUNC7(substream);

	chip->dma2_size = size;

        FUNC3(chip, substream, DAC2);

        /* Transfer Count Reload */
        count = 0x10000 - count;
        FUNC2(chip, 0x74, count & 0xff);
        FUNC2(chip, 0x76, count >> 8);

	/* Set format */
        FUNC1(chip, 0x7A, 0x07,
			      ((runtime->channels == 1) ? 0x00 : 0x02) |
			      (FUNC5(runtime->format) == 16 ? 0x01 : 0x00) |
			      (FUNC4(runtime->format) ? 0x00 : 0x04));

        /* Set DMA controller */
        FUNC0(chip->dma2, runtime->dma_addr, size, DMA_MODE_WRITE | DMA_AUTOINIT);

	return 0;
}