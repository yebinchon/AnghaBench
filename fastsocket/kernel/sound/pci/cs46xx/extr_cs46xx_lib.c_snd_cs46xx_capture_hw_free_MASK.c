#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; int /*<<< orphan*/ * dma_area; } ;
struct TYPE_3__ {int /*<<< orphan*/ * area; } ;
struct TYPE_4__ {TYPE_1__ hw_buf; } ;
struct snd_cs46xx {TYPE_2__ capt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 struct snd_cs46xx* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_cs46xx *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (runtime->dma_area != chip->capt.hw_buf.area)
		FUNC0(substream);
	runtime->dma_area = NULL;
	runtime->dma_addr = 0;
	runtime->dma_bytes = 0;

	return 0;
}