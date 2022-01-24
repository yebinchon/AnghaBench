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
struct snd_pcm {struct snd_soc_pcm_runtime* private_data; } ;
struct s6000_pcm_dma_params {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm *pcm)
{
	struct snd_soc_pcm_runtime *runtime = pcm->private_data;
	struct s6000_pcm_dma_params *params = runtime->dai->cpu_dai->dma_data;

	FUNC0(params->irq, pcm);
	FUNC1(pcm);
}