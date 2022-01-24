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
struct dma_buffparms {int flags; int dma; int bytes_in_use; int fragment_size; int nbufs; int qtail; int /*<<< orphan*/  lock; } ;
struct audio_operations {struct dma_buffparms* dmap_in; } ;

/* Variables and functions */
 int DMA_NODMA ; 
 struct audio_operations** audio_devs ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  isa_dma_bridge_buggy ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(int dev)
{
	struct audio_operations *adev = audio_devs[dev];
	struct dma_buffparms *dmap = adev->dmap_in;
	unsigned long flags;

	FUNC7(&dmap->lock,flags);

	if (!(dmap->flags & DMA_NODMA)) {
		int chan = dmap->dma, pos, n;
		unsigned long f;
		
		f=FUNC0();
		if(!isa_dma_bridge_buggy)
			FUNC2(dmap->dma);
		FUNC1(chan);
		pos = dmap->bytes_in_use - FUNC5(chan);
		if(!isa_dma_bridge_buggy)
			FUNC4(dmap->dma);
		FUNC6(f);

		pos = pos / dmap->fragment_size;	/* Actual qhead */
		if (pos < 0 || pos >= dmap->nbufs)
			pos = 0;

		n = 0;
		while (dmap->qtail != pos && ++n < dmap->nbufs)
			FUNC3(dev);
	} else
		FUNC3(dev);
	FUNC8(&dmap->lock,flags);
}