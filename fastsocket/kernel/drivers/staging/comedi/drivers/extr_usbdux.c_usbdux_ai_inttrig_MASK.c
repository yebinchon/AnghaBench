#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbduxsub {int ai_cmd_running; int /*<<< orphan*/  sem; TYPE_2__* interface; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  minor; struct usbduxsub* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usbduxsub*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			     struct comedi_subdevice *s, unsigned int trignum)
{
	int ret;
	struct usbduxsub *this_usbduxsub = dev->private;
	if (!this_usbduxsub)
		return -EFAULT;

	FUNC2(&this_usbduxsub->sem);
	if (!(this_usbduxsub->probed)) {
		FUNC3(&this_usbduxsub->sem);
		return -ENODEV;
	}
	FUNC0(&this_usbduxsub->interface->dev,
		"comedi%d: usbdux_ai_inttrig\n", dev->minor);

	if (trignum != 0) {
		FUNC1(&this_usbduxsub->interface->dev,
			"comedi%d: usbdux_ai_inttrig: invalid trignum\n",
			dev->minor);
		FUNC3(&this_usbduxsub->sem);
		return -EINVAL;
	}
	if (!(this_usbduxsub->ai_cmd_running)) {
		this_usbduxsub->ai_cmd_running = 1;
		ret = FUNC4(this_usbduxsub);
		if (ret < 0) {
			FUNC1(&this_usbduxsub->interface->dev,
				"comedi%d: usbdux_ai_inttrig: "
				"urbSubmit: err=%d\n", dev->minor, ret);
			this_usbduxsub->ai_cmd_running = 0;
			FUNC3(&this_usbduxsub->sem);
			return ret;
		}
		s->async->inttrig = NULL;
	} else {
		FUNC1(&this_usbduxsub->interface->dev,
			"comedi%d: ai_inttrig but acqu is already running\n",
			dev->minor);
	}
	FUNC3(&this_usbduxsub->sem);
	return 1;
}