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
struct usbduxsub {TYPE_1__* interface; int /*<<< orphan*/  pwm_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  minor; struct usbduxsub* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SENDPWMOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbduxsub*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			     struct comedi_subdevice *s)
{
	struct usbduxsub *this_usbduxsub = dev->private;
	int res = 0;

	/* unlink only if it is really running */
	res = FUNC2(this_usbduxsub, this_usbduxsub->pwm_cmd_running);

	FUNC0(&this_usbduxsub->interface->dev,
		"comedi %d: sending pwm off command to the usb device.\n",
		dev->minor);
	res = FUNC1(this_usbduxsub, SENDPWMOFF);
	if (res < 0)
		return res;

	return res;
}