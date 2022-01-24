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
struct usbduxsub {int /*<<< orphan*/  sem; int /*<<< orphan*/ * dux_commands; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  WRITECOUNTERCOMMAND ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	struct usbduxsub *this_usbduxsub = dev->private;
	int err;

	if (!this_usbduxsub)
		return -EFAULT;

	FUNC1(&this_usbduxsub->sem);

	if (!(this_usbduxsub->probed)) {
		FUNC3(&this_usbduxsub->sem);
		return -ENODEV;
	}

	this_usbduxsub->dux_commands[1] = insn->chanspec;
	*((int16_t *) (this_usbduxsub->dux_commands + 2)) = FUNC0(*data);

	err = FUNC2(this_usbduxsub, WRITECOUNTERCOMMAND);
	if (err < 0) {
		FUNC3(&this_usbduxsub->sem);
		return err;
	}

	FUNC3(&this_usbduxsub->sem);

	return 1;
}