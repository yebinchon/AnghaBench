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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct atmel_abdac {TYPE_1__ dma; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 struct atmel_abdac* FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct atmel_abdac *dac = FUNC2(substream);
	if (FUNC3(DMA_READY, &dac->flags))
		FUNC0(dac->dma.chan);
	return FUNC1(substream);
}