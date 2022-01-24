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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_chan; } ;
struct atmel_ac97c {int /*<<< orphan*/  cur_format; int /*<<< orphan*/  cur_rate; TYPE_1__ dma; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RX_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opened_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct atmel_ac97c* FUNC7 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *hw_params)
{
	struct atmel_ac97c *chip = FUNC7(substream);
	int retval;

	retval = FUNC6(substream,
					FUNC3(hw_params));
	if (retval < 0)
		return retval;
	/* snd_pcm_lib_malloc_pages returns 1 if buffer is changed. */
	if (retval == 1)
		if (FUNC8(DMA_RX_READY, &chip->flags))
			FUNC0(chip->dma.rx_chan);

	/* Set restrictions to params. */
	FUNC1(&opened_mutex);
	chip->cur_rate = FUNC5(hw_params);
	chip->cur_format = FUNC4(hw_params);
	FUNC2(&opened_mutex);

	return retval;
}