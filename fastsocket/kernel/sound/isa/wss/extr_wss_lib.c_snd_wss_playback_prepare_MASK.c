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
struct snd_wss {unsigned int p_dma_size; int* image; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  dma1; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_PLAYBACK_ENABLE ; 
 int CS4231_PLAYBACK_PIO ; 
 size_t CS4231_PLAYBK_FORMAT ; 
 int /*<<< orphan*/  CS4231_PLY_LWR_CNT ; 
 int /*<<< orphan*/  CS4231_PLY_UPR_CNT ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_wss* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*) ; 
 int FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_wss*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_wss *chip = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long flags;
	unsigned int size = FUNC1(substream);
	unsigned int count = FUNC2(substream);

	FUNC7(&chip->reg_lock, flags);
	chip->p_dma_size = size;
	chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO);
	FUNC0(chip->dma1, runtime->dma_addr, size, DMA_MODE_WRITE | DMA_AUTOINIT);
	count = FUNC5(chip->image[CS4231_PLAYBK_FORMAT], count) - 1;
	FUNC6(chip, CS4231_PLY_LWR_CNT, (unsigned char) count);
	FUNC6(chip, CS4231_PLY_UPR_CNT, (unsigned char) (count >> 8));
	FUNC8(&chip->reg_lock, flags);
#if 0
	snd_wss_debug(chip);
#endif
	return 0;
}