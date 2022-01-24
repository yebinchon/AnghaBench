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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atmel_abdac {int /*<<< orphan*/  flags; int /*<<< orphan*/  sample_clk; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_READY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct atmel_abdac*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct atmel_abdac* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct atmel_abdac *dac = FUNC2(substream);
	int retval;

	retval = FUNC1(dac->sample_clk, 256 * substream->runtime->rate);
	if (retval)
		return retval;

	if (!FUNC3(DMA_READY, &dac->flags))
		retval = FUNC0(dac, substream, DMA_TO_DEVICE);

	return retval;
}