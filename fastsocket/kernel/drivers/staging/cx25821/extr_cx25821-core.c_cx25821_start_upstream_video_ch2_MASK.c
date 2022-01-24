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
struct upstream_user_struct {int dummy; } ;
struct cx25821_dev {int _isNTSC_ch2; int /*<<< orphan*/  pixel_format_ch2; int /*<<< orphan*/  channel_select_ch2; int /*<<< orphan*/  tvnorm; int /*<<< orphan*/  vid_stdname_ch2; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_STD_NTSC_M ; 
 int /*<<< orphan*/  V4L2_STD_PAL_BG ; 
 int /*<<< orphan*/  cx25821_vidupstream_init_ch2 (struct cx25821_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  medusa_set_videostandard (struct cx25821_dev*) ; 
 int /*<<< orphan*/  strcmp (int /*<<< orphan*/ ,char*) ; 

void cx25821_start_upstream_video_ch2(struct cx25821_dev *dev,
				      struct upstream_user_struct *up_data)
{
	dev->_isNTSC_ch2 = !strcmp(dev->vid_stdname_ch2, "NTSC") ? 1 : 0;

	dev->tvnorm = !dev->_isNTSC_ch2 ? V4L2_STD_PAL_BG : V4L2_STD_NTSC_M;
	medusa_set_videostandard(dev);

	cx25821_vidupstream_init_ch2(dev, dev->channel_select_ch2,
				     dev->pixel_format_ch2);
}