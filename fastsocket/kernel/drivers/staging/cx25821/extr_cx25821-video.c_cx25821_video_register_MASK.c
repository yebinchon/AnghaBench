#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  current_norm; } ;
struct cx25821_dev {size_t nr; int /*<<< orphan*/  lock; int /*<<< orphan*/  tvnorm; int /*<<< orphan*/ * video_dev; int /*<<< orphan*/  pci; TYPE_3__* sram_channels; TYPE_2__* vidq; TYPE_1__* timeout_data; int /*<<< orphan*/  slock; } ;
struct TYPE_8__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_ctl; } ;
struct TYPE_6__ {int /*<<< orphan*/  stopper; TYPE_4__ timeout; int /*<<< orphan*/  queued; int /*<<< orphan*/  active; } ;
struct TYPE_5__ {TYPE_3__* channel; struct cx25821_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PCI_INT_MSK ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*,int /*<<< orphan*/ ,struct video_device*,char*) ; 
 int /*<<< orphan*/  cx25821_vid_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct cx25821_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx25821_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * video_nr ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct cx25821_dev *dev, int chan_num,
			   struct video_device *video_template)
{
	int err;

	FUNC10(&dev->slock);

	//printk(KERN_WARNING "Channel %d\n", chan_num);

#ifdef TUNER_FLAG
	dev->tvnorm = video_template->current_norm;
#endif

	/* init video dma queues */
	dev->timeout_data[chan_num].dev = dev;
	dev->timeout_data[chan_num].channel = &dev->sram_channels[chan_num];
	FUNC0(&dev->vidq[chan_num].active);
	FUNC0(&dev->vidq[chan_num].queued);
	dev->vidq[chan_num].timeout.function = cx25821_vid_timeout;
	dev->vidq[chan_num].timeout.data =
	    (unsigned long)&dev->timeout_data[chan_num];
	FUNC7(&dev->vidq[chan_num].timeout);
	FUNC1(dev->pci, &dev->vidq[chan_num].stopper,
			     dev->sram_channels[chan_num].dma_ctl, 0x11, 0);

	/* register v4l devices */
	dev->video_dev[chan_num] =
	    FUNC3(dev, dev->pci, video_template, "video");
	err =
	    FUNC11(dev->video_dev[chan_num], VFL_TYPE_GRABBER,
				  video_nr[dev->nr]);

	if (err < 0) {
		goto fail_unreg;
	}
	//set PCI interrupt
	FUNC5(PCI_INT_MSK, 0xff);

	/* initial device configuration */
	FUNC8(&dev->lock);
#ifdef TUNER_FLAG
	cx25821_set_tvnorm(dev, dev->tvnorm);
#endif
	FUNC9(&dev->lock);

	FUNC6(dev, chan_num);

	return 0;

      fail_unreg:
	FUNC4(dev, chan_num);
	return err;
}