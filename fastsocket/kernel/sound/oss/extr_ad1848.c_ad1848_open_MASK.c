#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int open_mode; } ;
typedef  TYPE_1__ ad1848_port_info ;
struct TYPE_6__ {int open_mode; int dual_dma; int record_dev; int playback_dev; int /*<<< orphan*/  lock; scalar_t__ audio_mode; scalar_t__ intr_active; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_7__ {int flags; scalar_t__ portc; scalar_t__ devc; } ;

/* Variables and functions */
 int DMA_DUPLEX ; 
 int EBUSY ; 
 int ENXIO ; 
 int OPEN_READ ; 
 int OPEN_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__** audio_devs ; 
 int num_audiodevs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(int dev, int mode)
{
	ad1848_info    *devc;
	ad1848_port_info *portc;
	unsigned long   flags;

	if (dev < 0 || dev >= num_audiodevs)
		return -ENXIO;

	devc = (ad1848_info *) audio_devs[dev]->devc;
	portc = (ad1848_port_info *) audio_devs[dev]->portc;

	/* here we don't have to protect against intr */
	FUNC2(&devc->lock);
	if (portc->open_mode || (devc->open_mode & mode))
	{
		FUNC4(&devc->lock);
		return -EBUSY;
	}
	devc->dual_dma = 0;

	if (audio_devs[dev]->flags & DMA_DUPLEX)
	{
		devc->dual_dma = 1;
	}
	devc->intr_active = 0;
	devc->audio_mode = 0;
	devc->open_mode |= mode;
	portc->open_mode = mode;
	FUNC4(&devc->lock);
	FUNC0(dev, 0);

	if (mode & OPEN_READ)
		devc->record_dev = dev;
	if (mode & OPEN_WRITE)
		devc->playback_dev = dev;
/*
 * Mute output until the playback really starts. This decreases clicking (hope so).
 */
	FUNC3(&devc->lock,flags);
	FUNC1(devc);
	FUNC5(&devc->lock,flags);

	return 0;
}