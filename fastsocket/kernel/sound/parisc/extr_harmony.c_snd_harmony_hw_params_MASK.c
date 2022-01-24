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
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct snd_harmony {TYPE_1__ dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_area; int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 scalar_t__ SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_harmony* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int 
FUNC4(struct snd_pcm_substream *ss,
		      struct snd_pcm_hw_params *hw)
{
	int err;
	struct snd_harmony *h = FUNC3(ss);
	
	err = FUNC2(ss, FUNC1(hw));
	if (err > 0 && h->dma.type == SNDRV_DMA_TYPE_CONTINUOUS)
		ss->runtime->dma_addr = FUNC0(ss->runtime->dma_area);
	
	return err;
}