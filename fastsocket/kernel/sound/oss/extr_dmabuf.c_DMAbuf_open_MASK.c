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
struct dma_buffparms {scalar_t__ dma_mode; int /*<<< orphan*/  bytes_in_use; int /*<<< orphan*/  neutral_byte; int /*<<< orphan*/  raw_buf; } ;
struct audio_operations {int flags; int enable_bits; int open_mode; int go; struct dma_buffparms* dmap_out; TYPE_1__* d; struct dma_buffparms* dmap_in; } ;
struct TYPE_2__ {int (* open ) (int,int) ;int /*<<< orphan*/  (* set_speed ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_channels ) (int,int) ;int /*<<< orphan*/  (* set_bits ) (int,int) ;int /*<<< orphan*/  (* close ) (int) ;} ;

/* Variables and functions */
 int DMA_DUPLEX ; 
 scalar_t__ DMODE_OUTPUT ; 
 int /*<<< orphan*/  DSP_DEFAULT_SPEED ; 
 int ENXIO ; 
 int OPEN_READ ; 
 int OPEN_WRITE ; 
 struct audio_operations** audio_devs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_operations*,struct dma_buffparms*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct audio_operations*,int,struct dma_buffparms*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10(int dev, int mode)
{
	struct audio_operations *adev = audio_devs[dev];
	int retval;
	struct dma_buffparms *dmap_in = NULL;
	struct dma_buffparms *dmap_out = NULL;

	if (!adev)
		  return -ENXIO;
	if (!(adev->flags & DMA_DUPLEX))
		adev->dmap_in = adev->dmap_out;
	FUNC0(adev->d);

	if ((retval = adev->d->open(dev, mode)) < 0)
		return retval;
	dmap_out = adev->dmap_out;
	dmap_in = adev->dmap_in;
	if (dmap_in == dmap_out)
		adev->flags &= ~DMA_DUPLEX;

	if (mode & OPEN_WRITE) {
		if ((retval = FUNC3(adev, mode, dmap_out)) < 0) {
			adev->d->close(dev);
			return retval;
		}
	}
	adev->enable_bits = mode;

	if (mode == OPEN_READ || (mode != OPEN_WRITE && (adev->flags & DMA_DUPLEX))) {
		if ((retval = FUNC3(adev, mode, dmap_in)) < 0) {
			adev->d->close(dev);
			if (mode & OPEN_WRITE)
				FUNC1(adev, dmap_out);
			return retval;
		}
	}
	adev->open_mode = mode;
	adev->go = 1;

	adev->d->set_bits(dev, 8);
	adev->d->set_channels(dev, 1);
	adev->d->set_speed(dev, DSP_DEFAULT_SPEED);
	if (adev->dmap_out->dma_mode == DMODE_OUTPUT) 
		FUNC2(adev->dmap_out->raw_buf, adev->dmap_out->neutral_byte,
		       adev->dmap_out->bytes_in_use);
	return 0;
}