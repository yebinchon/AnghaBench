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
struct dma_buffparms {scalar_t__ dma; int flags; int /*<<< orphan*/  dma_mode; } ;
struct audio_operations {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMAP_FREE_ON_CLOSE ; 
 int DMA_BUSY ; 
 int /*<<< orphan*/  DMODE_NONE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ sound_dmap_flag ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buffparms*) ; 

__attribute__((used)) static void FUNC5(struct audio_operations *adev, struct dma_buffparms *dmap)
{
	unsigned long flags;
	
	if (dmap->dma >= 0) {
		FUNC3(dmap->dma);
		flags=FUNC0();
		FUNC1(dmap->dma);
		FUNC2(flags);
	}
	if (dmap->flags & DMA_BUSY)
		dmap->dma_mode = DMODE_NONE;
	dmap->flags &= ~DMA_BUSY;
	
	if (sound_dmap_flag == DMAP_FREE_ON_CLOSE)
		FUNC4(dmap);
}