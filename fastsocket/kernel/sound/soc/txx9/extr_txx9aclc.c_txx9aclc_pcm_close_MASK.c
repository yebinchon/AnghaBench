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
struct txx9aclc_dmadata {int frag_count; struct dma_chan* dma_chan; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* device_terminate_all ) (struct dma_chan*) ;} ;
struct TYPE_3__ {struct txx9aclc_dmadata* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream)
{
	struct txx9aclc_dmadata *dmadata = substream->runtime->private_data;
	struct dma_chan *chan = dmadata->dma_chan;

	dmadata->frag_count = -1;
	chan->device->device_terminate_all(chan);
	return 0;
}