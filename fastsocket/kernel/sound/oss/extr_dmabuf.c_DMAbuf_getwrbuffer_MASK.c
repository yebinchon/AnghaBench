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
struct dma_buffparms {int mapping_flags; scalar_t__ dma_mode; int /*<<< orphan*/  lock; scalar_t__ needs_reorg; } ;
struct audio_operations {struct dma_buffparms* dmap_out; } ;

/* Variables and functions */
 int DMA_MAP_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMODE_INPUT ; 
 scalar_t__ DMODE_OUTPUT ; 
 int EINVAL ; 
 int EIO ; 
 struct audio_operations** audio_devs ; 
 scalar_t__ FUNC1 (int,char**,int*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct dma_buffparms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(int dev, char **buf, int *size, int dontblock)
{
	struct audio_operations *adev = audio_devs[dev];
	unsigned long flags;
	int err = -EIO;
	struct dma_buffparms *dmap = adev->dmap_out;

	if (dmap->mapping_flags & DMA_MAP_MAPPED) {
/*		printk(KERN_DEBUG "Sound: Can't write to mmapped device (3)\n");*/
		return -EINVAL;
	}
	FUNC4(&dmap->lock,flags);
	if (dmap->needs_reorg)
		FUNC3(dev, dmap, 0);

	if (dmap->dma_mode == DMODE_INPUT) {	/* Direction change */
		FUNC5(&dmap->lock,flags);
		FUNC0(dev);
		FUNC4(&dmap->lock,flags);
	}
	dmap->dma_mode = DMODE_OUTPUT;

	while (FUNC1(dev, buf, size) <= 0) {
		FUNC5(&dmap->lock,flags);
		if ((err = FUNC2(dev, dontblock)) < 0) {
			return err;
		}
		FUNC4(&dmap->lock,flags);
	}

	FUNC5(&dmap->lock,flags);
	return 0;
}