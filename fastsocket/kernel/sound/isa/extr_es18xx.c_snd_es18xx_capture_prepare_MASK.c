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
struct snd_es18xx {unsigned int dma1_size; int /*<<< orphan*/  dma1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1 ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_es18xx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_es18xx*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_es18xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_es18xx*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct snd_pcm_substream*) ; 
 unsigned int FUNC8 (struct snd_pcm_substream*) ; 
 struct snd_es18xx* FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
        struct snd_es18xx *chip = FUNC9(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int size = FUNC7(substream);
	unsigned int count = FUNC8(substream);

	chip->dma1_size = size;

	FUNC3(chip);

        /* Set stereo/mono */
        FUNC1(chip, 0xA8, 0x03, runtime->channels == 1 ? 0x02 : 0x01);

        FUNC2(chip, substream, ADC1);

        /* Transfer Count Reload */
	count = 0x10000 - count;
	FUNC4(chip, 0xA4, count & 0xff);
	FUNC4(chip, 0xA5, count >> 8);

#ifdef AVOID_POPS
	udelay(100000);
#endif

        /* Set format */
        FUNC4(chip, 0xB7, 
                         FUNC5(runtime->format) ? 0x51 : 0x71);
        FUNC4(chip, 0xB7, 0x90 |
                         ((runtime->channels == 1) ? 0x40 : 0x08) |
                         (FUNC6(runtime->format) == 16 ? 0x04 : 0x00) |
                         (FUNC5(runtime->format) ? 0x00 : 0x20));

        /* Set DMA controller */
        FUNC0(chip->dma1, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);

	return 0;
}