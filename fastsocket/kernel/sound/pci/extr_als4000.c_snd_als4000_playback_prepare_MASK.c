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
struct snd_sb {int playback_format; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  rate; } ;
struct TYPE_2__ {unsigned int dsp_cmd; unsigned int format; unsigned int dma_off; } ;

/* Variables and functions */
 int ALS4000_FORMAT_16BIT ; 
 TYPE_1__ FUNC0 (struct snd_sb*) ; 
 int FUNC1 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct snd_pcm_substream*) ; 
 unsigned int FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_sb* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct snd_sb *chip = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long size;
	unsigned count;

	chip->playback_format = FUNC1(runtime);
	
	size = FUNC4(substream);
	count = FUNC5(substream);
	
	if (chip->playback_format & ALS4000_FORMAT_16BIT)
		count >>= 1;
	count--;
	
	/* FIXME: from second playback on, there's a lot more clicks and pops
	 * involved here than on first playback. Fiddling with
	 * tons of different settings didn't help (DMA, speaker on/off,
	 * reordering, ...). Something seems to get enabled on playback
	 * that I haven't found out how to disable again, which then causes
	 * the switching pops to reach the speakers the next time here. */
	FUNC8(&chip->reg_lock);
	FUNC3(chip, runtime->rate);
	FUNC2(chip, runtime->dma_addr, size);
	
	/* SPEAKER_ON not needed, since dma_on seems to also enable speaker */
	/* snd_sbdsp_command(chip, SB_DSP_SPEAKER_ON); */
	FUNC7(chip, FUNC0(chip).dsp_cmd);
	FUNC7(chip, FUNC0(chip).format);
	FUNC7(chip, count & 0xff);
	FUNC7(chip, count >> 8);
	FUNC7(chip, FUNC0(chip).dma_off);	
	FUNC9(&chip->reg_lock);
	
	return 0;
}