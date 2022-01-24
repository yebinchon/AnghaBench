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
struct txx9aclc_dmadata {scalar_t__ pos; struct snd_pcm_substream* substream; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  min_align; int /*<<< orphan*/  dma_bytes; scalar_t__ dma_addr; scalar_t__ dma_area; struct txx9aclc_dmadata* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = FUNC5(substream);
	struct snd_soc_device *socdev = rtd->socdev;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct txx9aclc_dmadata *dmadata = runtime->private_data;
	int ret;

	ret = FUNC4(substream, FUNC1(params));
	if (ret < 0)
		return ret;

	FUNC0(socdev->dev,
		"runtime->dma_area = %#lx dma_addr = %#lx dma_bytes = %zd "
		"runtime->min_align %ld\n",
		(unsigned long)runtime->dma_area,
		(unsigned long)runtime->dma_addr, runtime->dma_bytes,
		runtime->min_align);
	FUNC0(socdev->dev,
		"periods %d period_bytes %d stream %d\n",
		FUNC3(params), FUNC2(params),
		substream->stream);

	dmadata->substream = substream;
	dmadata->pos = 0;
	return 0;
}