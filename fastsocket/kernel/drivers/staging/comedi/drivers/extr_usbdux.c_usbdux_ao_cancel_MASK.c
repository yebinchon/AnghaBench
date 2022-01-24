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
struct usbduxsub {int /*<<< orphan*/  sem; int /*<<< orphan*/  ao_cmd_running; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsub* private; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usbduxsub*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct usbduxsub *this_usbduxsub = dev->private;
	int res = 0;

	if (!this_usbduxsub)
		return -EFAULT;

	/* prevent other CPUs from submitting a command just now */
	FUNC0(&this_usbduxsub->sem);
	if (!(this_usbduxsub->probed)) {
		FUNC1(&this_usbduxsub->sem);
		return -ENODEV;
	}
	/* unlink only if it is really running */
	res = FUNC2(this_usbduxsub, this_usbduxsub->ao_cmd_running);
	FUNC1(&this_usbduxsub->sem);
	return res;
}