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
typedef  scalar_t__ u32 ;
struct sram_channel {int /*<<< orphan*/  int_stat; int /*<<< orphan*/  int_mstat; } ;
struct cx25821_dev {struct sram_channel* sram_channels; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int VID_UPSTREAM_SRAM_CHANNEL_J ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*) ; 
 int FUNC2 (struct cx25821_dev*,int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct cx25821_dev *dev = dev_id;
	u32 msk_stat, vid_status;
	int handled = 0;
	int channel_num = 0;
	struct sram_channel *sram_ch;

	if (!dev)
		return -1;

	channel_num = VID_UPSTREAM_SRAM_CHANNEL_J;

	sram_ch = &dev->sram_channels[channel_num];

	msk_stat = FUNC3(sram_ch->int_mstat);
	vid_status = FUNC3(sram_ch->int_stat);

	// Only deal with our interrupt
	if (vid_status) {
		handled =
		    FUNC2(dev, channel_num,
						   vid_status);
	}

	if (handled < 0) {
		FUNC1(dev);
	} else {
		handled += handled;
	}

	return FUNC0(handled);
}