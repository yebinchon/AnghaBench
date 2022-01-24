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
struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct s6000_pcm_dma_params {int in_use; int rate; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;

	FUNC1(&par->lock);
	par->in_use &= ~(1 << substream->stream);
	if (!par->in_use)
		par->rate = -1;
	FUNC2(&par->lock);

	return FUNC0(substream);
}