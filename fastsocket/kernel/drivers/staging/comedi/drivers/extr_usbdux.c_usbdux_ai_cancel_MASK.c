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
struct usbduxsub {int /*<<< orphan*/  sem; int /*<<< orphan*/  ai_cmd_running; int /*<<< orphan*/  probed; TYPE_1__* interface; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsub* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usbduxsub*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct usbduxsub *this_usbduxsub;
	int res = 0;

	/* force unlink of all urbs */
	this_usbduxsub = dev->private;
	if (!this_usbduxsub)
		return -EFAULT;

	FUNC0(&this_usbduxsub->interface->dev, "comedi: usbdux_ai_cancel\n");

	/* prevent other CPUs from submitting new commands just now */
	FUNC1(&this_usbduxsub->sem);
	if (!(this_usbduxsub->probed)) {
		FUNC2(&this_usbduxsub->sem);
		return -ENODEV;
	}
	/* unlink only if the urb really has been submitted */
	res = FUNC3(this_usbduxsub, this_usbduxsub->ai_cmd_running);
	FUNC2(&this_usbduxsub->sem);
	return res;
}