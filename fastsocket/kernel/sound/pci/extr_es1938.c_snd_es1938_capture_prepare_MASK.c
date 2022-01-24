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
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  format; int /*<<< orphan*/  dma_addr; } ;
struct es1938 {unsigned int dma1_size; int dma1_shift; int /*<<< orphan*/  dma1_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1 ; 
 int /*<<< orphan*/  ESS_CMD_ANALOGCONTROL ; 
 int /*<<< orphan*/  ESS_CMD_DMACNTRELOADH ; 
 int /*<<< orphan*/  ESS_CMD_DMACNTRELOADL ; 
 int /*<<< orphan*/  ESS_CMD_SETFORMAT2 ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1938*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct es1938*) ; 
 int /*<<< orphan*/  FUNC4 (struct es1938*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct snd_pcm_substream*) ; 
 unsigned int FUNC8 (struct snd_pcm_substream*) ; 
 struct es1938* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct es1938 *chip = FUNC9(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int u, is8, mono;
	unsigned int size = FUNC7(substream);
	unsigned int count = FUNC8(substream);

	chip->dma1_size = size;
	chip->dma1_start = runtime->dma_addr;

	mono = (runtime->channels > 1) ? 0 : 1;
	is8 = FUNC6(runtime->format) == 16 ? 0 : 1;
	u = FUNC5(runtime->format);

	chip->dma1_shift = 2 - mono - is8;

	FUNC3(chip);
	
	/* program type */
	FUNC0(chip, ESS_CMD_ANALOGCONTROL, 0x03, (mono ? 2 : 1));

	/* set clock and counters */
        FUNC2(chip, substream, ADC1);

	count = 0x10000 - count;
	FUNC4(chip, ESS_CMD_DMACNTRELOADL, count & 0xff);
	FUNC4(chip, ESS_CMD_DMACNTRELOADH, count >> 8);

	/* initialize and configure ADC */
	FUNC4(chip, ESS_CMD_SETFORMAT2, u ? 0x51 : 0x71);
	FUNC4(chip, ESS_CMD_SETFORMAT2, 0x90 | 
		       (u ? 0x00 : 0x20) | 
		       (is8 ? 0x00 : 0x04) | 
		       (mono ? 0x40 : 0x08));

	//	snd_es1938_reset_fifo(chip);	

	/* 11. configure system interrupt controller and DMA controller */
	FUNC1(chip);

	return 0;
}