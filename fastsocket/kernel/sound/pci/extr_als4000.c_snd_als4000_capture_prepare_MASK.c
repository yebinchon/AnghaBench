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
struct snd_sb {int capture_format; int /*<<< orphan*/  mixer_lock; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int ALS4000_FORMAT_16BIT ; 
 int /*<<< orphan*/  ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO ; 
 int /*<<< orphan*/  ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI ; 
 int FUNC0 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC4 (struct snd_pcm_substream*) ; 
 unsigned int FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_sb* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_sb *chip = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long size;
	unsigned count;

	chip->capture_format = FUNC0(runtime);
		
	size = FUNC4(substream);
	count = FUNC5(substream);
	
	if (chip->capture_format & ALS4000_FORMAT_16BIT)
		count >>= 1;
	count--;

	FUNC7(&chip->reg_lock);
	FUNC2(chip, runtime->rate);
	FUNC1(chip, runtime->dma_addr, size);
	FUNC8(&chip->reg_lock);
	FUNC7(&chip->mixer_lock);
	FUNC3(chip, ALS4K_CR1C_FIFO2_BLOCK_LENGTH_LO, count & 0xff);
	FUNC3(chip, ALS4K_CR1D_FIFO2_BLOCK_LENGTH_HI, count >> 8);
	FUNC8(&chip->mixer_lock);
	return 0;
}