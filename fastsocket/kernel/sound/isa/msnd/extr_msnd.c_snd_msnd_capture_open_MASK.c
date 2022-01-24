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
struct snd_pcm_runtime {int dma_bytes; int /*<<< orphan*/  hw; scalar_t__ dma_area; } ;
struct snd_msnd {struct snd_pcm_substream* capture_substream; scalar_t__ mappedbase; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_AUDIO_READ_INUSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_msnd_capture ; 
 int /*<<< orphan*/  FUNC2 (struct snd_msnd*) ; 
 struct snd_msnd* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_msnd *chip = FUNC3(substream);

	FUNC1(F_AUDIO_READ_INUSE, &chip->flags);
	FUNC2(chip);
	runtime->dma_area = chip->mappedbase + 0x3000;
	runtime->dma_bytes = 0x3000;
	FUNC0(runtime->dma_area, 0, runtime->dma_bytes);
	chip->capture_substream = substream;
	runtime->hw = snd_msnd_capture;
	return 0;
}