#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int min_align; scalar_t__ dma_addr; int /*<<< orphan*/  dma_bytes; scalar_t__ dma_area; } ;
struct snd_pcm_hw_params {unsigned long msbits; } ;
struct au1xpsc_audio_dmadata {unsigned long periods; unsigned long dma_area_s; unsigned long dma_area; scalar_t__ pos; scalar_t__ curr_period; scalar_t__ q_period; int /*<<< orphan*/  period_bytes; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct au1xpsc_audio_dmadata*,int,unsigned long) ; 
 struct au1xpsc_audio_dmadata** au1xpsc_audio_pcmdma ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct au1xpsc_audio_dmadata *pcd;
	int stype, ret;

	ret = FUNC7(substream, FUNC4(params));
	if (ret < 0)
		goto out;

	stype = FUNC2(substream);
	pcd = au1xpsc_audio_pcmdma[stype];

	FUNC0("runtime->dma_area = 0x%08lx dma_addr_t = 0x%08lx dma_size = %d "
	    "runtime->min_align %d\n",
		(unsigned long)runtime->dma_area,
		(unsigned long)runtime->dma_addr, runtime->dma_bytes,
		runtime->min_align);

	FUNC0("bits %d  frags %d  frag_bytes %d  is_rx %d\n", params->msbits,
		FUNC6(params), FUNC5(params), stype);

	ret = FUNC3(pcd, stype, params->msbits);
	if (ret) {
		FUNC1("DDMA channel (re)alloc failed!\n");
		goto out;
	}

	pcd->substream = substream;
	pcd->period_bytes = FUNC5(params);
	pcd->periods = FUNC6(params);
	pcd->dma_area_s = pcd->dma_area = (unsigned long)runtime->dma_addr;
	pcd->q_period = 0;
	pcd->curr_period = 0;
	pcd->pos = 0;

	ret = 0;
out:
	return ret;
}