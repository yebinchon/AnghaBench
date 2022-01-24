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
struct dma_buffparms {scalar_t__ dma_mode; scalar_t__ qlen; int flags; scalar_t__ underrun_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  nbufs; } ;
struct audio_operations {int enable_bits; struct dma_buffparms* dmap_out; int /*<<< orphan*/  out_sleeper; TYPE_1__* d; int /*<<< orphan*/  go; } ;
struct TYPE_2__ {scalar_t__ (* local_qlen ) (int) ;} ;

/* Variables and functions */
 int DMA_ACTIVE ; 
 int DMA_SYNCING ; 
 int /*<<< orphan*/  FUNC0 (int,struct dma_buffparms*) ; 
 scalar_t__ DMODE_NONE ; 
 scalar_t__ DMODE_OUTPUT ; 
 int PCM_ENABLE_OUTPUT ; 
 struct audio_operations** audio_devs ; 
 int /*<<< orphan*/  current ; 
 long FUNC1 (struct dma_buffparms*) ; 
 long FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(int dev)
{
	struct audio_operations *adev = audio_devs[dev];
	unsigned long flags;
	int n = 0;
	struct dma_buffparms *dmap;

	if (!adev->go && !(adev->enable_bits & PCM_ENABLE_OUTPUT))
		return 0;

	if (adev->dmap_out->dma_mode == DMODE_OUTPUT) {
		dmap = adev->dmap_out;
		FUNC4(&dmap->lock,flags);
		if (dmap->qlen > 0 && !(dmap->flags & DMA_ACTIVE))
			FUNC0(dev, dmap);
		adev->dmap_out->flags |= DMA_SYNCING;
		adev->dmap_out->underrun_count = 0;
		while (!FUNC3(current) && n++ < adev->dmap_out->nbufs &&
		       adev->dmap_out->qlen && adev->dmap_out->underrun_count == 0) {
			long t = FUNC1(dmap);
			FUNC5(&dmap->lock,flags);
			/* FIXME: not safe may miss events */
			t = FUNC2(&adev->out_sleeper, t);
			FUNC4(&dmap->lock,flags);
			if (!t) {
				adev->dmap_out->flags &= ~DMA_SYNCING;
				FUNC5(&dmap->lock,flags);
				return adev->dmap_out->qlen;
			}
		}
		adev->dmap_out->flags &= ~(DMA_SYNCING | DMA_ACTIVE);
		
		/*
		 * Some devices such as GUS have huge amount of on board RAM for the
		 * audio data. We have to wait until the device has finished playing.
		 */

		/* still holding the lock */
		if (adev->d->local_qlen) {   /* Device has hidden buffers */
			while (!FUNC3(current) &&
			       adev->d->local_qlen(dev)){
				FUNC5(&dmap->lock,flags);
				FUNC2(&adev->out_sleeper,
							       FUNC1(dmap));
				FUNC4(&dmap->lock,flags);
			}
		}
		FUNC5(&dmap->lock,flags);
	}
	adev->dmap_out->dma_mode = DMODE_NONE;
	return adev->dmap_out->qlen;
}