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
struct snd_pcm_runtime {unsigned int rate; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; int /*<<< orphan*/  dma_addr; } ;
struct snd_ad1816a {unsigned int c_dma_size; int clock_freq; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_CAPTURE_BASE_COUNT ; 
 int /*<<< orphan*/  AD1816A_CAPTURE_CONFIG ; 
 int AD1816A_CAPTURE_ENABLE ; 
 int AD1816A_CAPTURE_PIO ; 
 int /*<<< orphan*/  AD1816A_CAPTURE_SAMPLE_RATE ; 
 int AD1816A_FMT_ALL ; 
 int AD1816A_FMT_STEREO ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1816a*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_ad1816a* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_ad1816a *chip = FUNC6(substream);
	unsigned long flags;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int size, rate;

	FUNC7(&chip->lock, flags);

	chip->c_dma_size = size = FUNC4(substream);
	FUNC1(chip, AD1816A_CAPTURE_CONFIG,
		AD1816A_CAPTURE_ENABLE | AD1816A_CAPTURE_PIO, 0x00);

	FUNC3(chip->dma2, runtime->dma_addr, size,
			DMA_MODE_READ | DMA_AUTOINIT);

	rate = runtime->rate;
	if (chip->clock_freq)
		rate = (rate * 33000) / chip->clock_freq;
	FUNC2(chip, AD1816A_CAPTURE_SAMPLE_RATE, rate);
	FUNC1(chip, AD1816A_CAPTURE_CONFIG,
		AD1816A_FMT_ALL | AD1816A_FMT_STEREO,
		FUNC0(chip, runtime->format,
			runtime->channels));

	FUNC2(chip, AD1816A_CAPTURE_BASE_COUNT,
		FUNC5(substream) / 4 - 1);

	FUNC8(&chip->lock, flags);
	return 0;
}