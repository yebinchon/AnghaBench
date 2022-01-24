#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_pcm_runtime {TYPE_3__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; TYPE_1__* runtime; } ;
struct s6000_runtime_data {int /*<<< orphan*/  lock; } ;
struct s6000_pcm_dma_params {int /*<<< orphan*/  dma_in; int /*<<< orphan*/  dma_out; } ;
struct TYPE_6__ {TYPE_2__* cpu_dai; } ;
struct TYPE_5__ {struct s6000_pcm_dma_params* dma_data; } ;
struct TYPE_4__ {struct s6000_runtime_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct s6000_runtime_data *prtd = substream->runtime->private_data;
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
	unsigned long flags;
	int srcinc;
	u32 dma;

	FUNC4(&prtd->lock, flags);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		srcinc = 1;
		dma = par->dma_out;
	} else {
		srcinc = 0;
		dma = par->dma_in;
	}
	FUNC3(FUNC1(dma), FUNC0(dma),
			   1 /* priority 1 (0 is max) */,
			   0 /* peripheral requests w/o xfer length mode */,
			   srcinc /* source address increment */,
			   srcinc^1 /* destination address increment */,
			   0 /* chunksize 0 (skip impossible on this dma) */,
			   0 /* source skip after chunk (impossible) */,
			   0 /* destination skip after chunk (impossible) */,
			   4 /* 16 byte burst size */,
			   -1 /* don't conserve bandwidth */,
			   0 /* low watermark irq descriptor theshold */,
			   0 /* disable hardware timestamps */,
			   1 /* enable channel */);

	FUNC2(substream);
	FUNC2(substream);

	FUNC5(&prtd->lock, flags);

	return 0;
}