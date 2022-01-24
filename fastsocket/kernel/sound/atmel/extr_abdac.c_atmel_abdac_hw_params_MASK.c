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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct atmel_abdac {TYPE_1__ dma; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct atmel_abdac* FUNC3 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *hw_params)
{
	struct atmel_abdac *dac = FUNC3(substream);
	int retval;

	retval = FUNC2(substream,
			FUNC1(hw_params));
	if (retval < 0)
		return retval;
	/* snd_pcm_lib_malloc_pages returns 1 if buffer is changed. */
	if (retval == 1)
		if (FUNC4(DMA_READY, &dac->flags))
			FUNC0(dac->dma.chan);

	return retval;
}