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
struct dma_buffparms {int flags; scalar_t__ underrun_count; int /*<<< orphan*/  lock; scalar_t__ user_counter; scalar_t__ qtail; scalar_t__ qhead; scalar_t__ qlen; scalar_t__ byte_counter; int /*<<< orphan*/  dma; } ;
struct audio_operations {int flags; struct dma_buffparms* dmap_out; TYPE_1__* d; int /*<<< orphan*/  out_sleeper; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* halt_output ) (int) ;int /*<<< orphan*/  (* halt_io ) (int) ;} ;

/* Variables and functions */
 int DMA_ACTIVE ; 
 int DMA_DUPLEX ; 
 int DMA_STARTED ; 
 int DMA_SYNCING ; 
 struct audio_operations** audio_devs ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buffparms*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,struct dma_buffparms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(int dev)
{
	struct audio_operations *adev = audio_devs[dev];
	unsigned long flags,f ;
	struct dma_buffparms *dmap = adev->dmap_out;

	if (!(dmap->flags & DMA_STARTED))	/* DMA is not active */
		return;

	/*
	 *	First wait until the current fragment has been played completely
	 */
	FUNC8(&dmap->lock,flags);
	adev->dmap_out->flags |= DMA_SYNCING;

	adev->dmap_out->underrun_count = 0;
	if (!FUNC7(current) && adev->dmap_out->qlen && 
	    adev->dmap_out->underrun_count == 0){
		FUNC9(&dmap->lock,flags);
		FUNC4(&adev->out_sleeper,
					       FUNC3(dmap));
		FUNC8(&dmap->lock,flags);
	}
	adev->dmap_out->flags &= ~(DMA_SYNCING | DMA_ACTIVE);

	/*
	 *	Finally shut the device off
	 */
	if (!(adev->flags & DMA_DUPLEX) || !adev->d->halt_output)
		adev->d->halt_io(dev);
	else
		adev->d->halt_output(dev);
	adev->dmap_out->flags &= ~DMA_STARTED;
	
	f=FUNC0();
	FUNC1(dmap->dma);
	FUNC2(dmap->dma);
	FUNC5(f);
	
	dmap->byte_counter = 0;
	FUNC6(dev, adev->dmap_out, 0);
	dmap->qlen = dmap->qhead = dmap->qtail = dmap->user_counter = 0;
	FUNC9(&dmap->lock,flags);
}