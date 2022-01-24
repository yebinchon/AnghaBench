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
struct snd_pcm_runtime {int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_area; int /*<<< orphan*/  hw; } ;
struct snd_cs4231 {scalar_t__ c_periods_sent; struct snd_pcm_substream* capture_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4231_MODE_RECORD ; 
 int /*<<< orphan*/  snd_cs4231_capture ; 
 int FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_cs4231* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_cs4231 *chip = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	runtime->hw = snd_cs4231_capture;

	err = FUNC0(chip, CS4231_MODE_RECORD);
	if (err < 0) {
		FUNC2(runtime->dma_area, runtime->dma_bytes);
		return err;
	}
	chip->capture_substream = substream;
	chip->c_periods_sent = 0;
	FUNC3(substream);
	FUNC1(runtime);

	return 0;
}