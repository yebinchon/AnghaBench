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
struct snd_pcm_runtime {int dma_bytes; int /*<<< orphan*/  hw; int /*<<< orphan*/  dma_area; } ;
struct snd_msnd {struct snd_pcm_substream* playback_substream; int /*<<< orphan*/  mappedbase; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_AUDIO_WRITE_INUSE ; 
 int /*<<< orphan*/  F_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_msnd*) ; 
 int /*<<< orphan*/  snd_msnd_playback ; 
 struct snd_msnd* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_msnd *chip = FUNC3(substream);

	FUNC1(F_AUDIO_WRITE_INUSE, &chip->flags);
	FUNC0(F_WRITING, &chip->flags);
	FUNC2(chip);

	runtime->dma_area = chip->mappedbase;
	runtime->dma_bytes = 0x3000;

	chip->playback_substream = substream;
	runtime->hw = snd_msnd_playback;
	return 0;
}