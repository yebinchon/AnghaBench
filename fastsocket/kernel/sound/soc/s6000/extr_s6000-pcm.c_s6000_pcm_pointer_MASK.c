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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_addr; struct s6000_runtime_data* private_data; } ;
struct s6000_runtime_data {int /*<<< orphan*/  lock; } ;
struct s6000_pcm_dma_params {int /*<<< orphan*/  dma_in; int /*<<< orphan*/  dma_out; } ;
typedef  unsigned int snd_pcm_uframes_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned int FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct s6000_runtime_data *prtd = runtime->private_data;
	unsigned long flags;
	unsigned int offset;
	dma_addr_t count;

	FUNC5(&prtd->lock, flags);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		count = FUNC4(FUNC1(par->dma_out),
				       FUNC0(par->dma_out));
	else
		count = FUNC3(FUNC1(par->dma_in),
				       FUNC0(par->dma_in));

	count -= runtime->dma_addr;

	FUNC6(&prtd->lock, flags);

	offset = FUNC2(runtime, count);
	if (FUNC7(offset >= runtime->buffer_size))
		offset = 0;

	return offset;
}