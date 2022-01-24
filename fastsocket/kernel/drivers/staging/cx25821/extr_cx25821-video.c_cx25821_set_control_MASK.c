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
struct v4l2_queryctrl {int type; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; } ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct cx25821_dev {int /*<<< orphan*/  ctl_saturation; int /*<<< orphan*/  ctl_contrast; int /*<<< orphan*/  ctl_hue; int /*<<< orphan*/  ctl_bright; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_BRIGHTNESS 134 
#define  V4L2_CID_CONTRAST 133 
#define  V4L2_CID_HUE 132 
#define  V4L2_CID_SATURATION 131 
#define  V4L2_CTRL_TYPE_BOOLEAN 130 
#define  V4L2_CTRL_TYPE_INTEGER 129 
#define  V4L2_CTRL_TYPE_MENU 128 
 struct v4l2_queryctrl* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx25821_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct cx25821_dev *dev,
			struct v4l2_control *ctl, int chan_num)
{
	int err;
	const struct v4l2_queryctrl *ctrl;

	err = -EINVAL;

	ctrl = FUNC0(ctl->id);

	if (NULL == ctrl)
		return err;

	switch (ctrl->type) {
	case V4L2_CTRL_TYPE_BOOLEAN:
	case V4L2_CTRL_TYPE_MENU:
	case V4L2_CTRL_TYPE_INTEGER:
		if (ctl->value < ctrl->minimum)
			ctl->value = ctrl->minimum;
		if (ctl->value > ctrl->maximum)
			ctl->value = ctrl->maximum;
		break;
	default:
		/* nothing */ ;
	};

	switch (ctl->id) {
	case V4L2_CID_BRIGHTNESS:
		dev->ctl_bright = ctl->value;
		FUNC1(dev, ctl->value, chan_num);
		break;
	case V4L2_CID_HUE:
		dev->ctl_hue = ctl->value;
		FUNC3(dev, ctl->value, chan_num);
		break;
	case V4L2_CID_CONTRAST:
		dev->ctl_contrast = ctl->value;
		FUNC2(dev, ctl->value, chan_num);
		break;
	case V4L2_CID_SATURATION:
		dev->ctl_saturation = ctl->value;
		FUNC4(dev, ctl->value, chan_num);
		break;
	}

	err = 0;

	return err;
}