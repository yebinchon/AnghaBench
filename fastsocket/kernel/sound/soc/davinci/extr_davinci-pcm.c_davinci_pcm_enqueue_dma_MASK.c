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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int periods; scalar_t__ dma_addr; struct davinci_runtime_data* private_data; } ;
struct davinci_runtime_data {int slave_lch; unsigned int period; TYPE_1__* params; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {unsigned int data_type; unsigned short acnt; scalar_t__ dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  INCR ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  W8BIT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned short,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,unsigned int) ; 
 unsigned int FUNC6 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct snd_pcm_substream *substream)
{
	struct davinci_runtime_data *prtd = substream->runtime->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int lch = prtd->slave_lch;
	unsigned int period_size;
	unsigned int dma_offset;
	dma_addr_t dma_pos;
	dma_addr_t src, dst;
	unsigned short src_bidx, dst_bidx;
	unsigned int data_type;
	unsigned short acnt;
	unsigned int count;

	period_size = FUNC6(substream);
	dma_offset = prtd->period * period_size;
	dma_pos = runtime->dma_addr + dma_offset;

	FUNC5("davinci_pcm: audio_set_dma_params_play channel = %d "
		"dma_ptr = %x period_size=%x\n", lch, dma_pos, period_size);

	data_type = prtd->params->data_type;
	count = period_size / data_type;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		src = dma_pos;
		dst = prtd->params->dma_addr;
		src_bidx = data_type;
		dst_bidx = 0;
	} else {
		src = prtd->params->dma_addr;
		dst = dma_pos;
		src_bidx = 0;
		dst_bidx = data_type;
	}

	acnt = prtd->params->acnt;
	FUNC2(lch, src, INCR, W8BIT);
	FUNC0(lch, dst, INCR, W8BIT);
	FUNC3(lch, src_bidx, 0);
	FUNC1(lch, dst_bidx, 0);
	FUNC4(lch, acnt, count, 1, 0, ASYNC);

	prtd->period++;
	if (FUNC7(prtd->period >= runtime->periods))
		prtd->period = 0;
}