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
struct usbduxsub {unsigned int* dux_commands; int /*<<< orphan*/  sem; int /*<<< orphan*/ * insnBuffer; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {unsigned int state; unsigned int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct usbduxsub* private; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SENDDIOBITSCOMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{

	struct usbduxsub *this_usbduxsub = dev->private;
	int err;

	if (!this_usbduxsub)
		return -EFAULT;

	if (insn->n != 2)
		return -EINVAL;

	FUNC0(&this_usbduxsub->sem);

	if (!(this_usbduxsub->probed)) {
		FUNC4(&this_usbduxsub->sem);
		return -ENODEV;
	}

	/* The insn data is a mask in data[0] and the new data
	 * in data[1], each channel cooresponding to a bit. */
	s->state &= ~data[0];
	s->state |= data[0] & data[1];
	this_usbduxsub->dux_commands[1] = s->io_bits;
	this_usbduxsub->dux_commands[2] = s->state;

	/* This command also tells the firmware to return */
	/* the digital input lines */
	err = FUNC3(this_usbduxsub, SENDDIOBITSCOMMAND);
	if (err < 0) {
		FUNC4(&this_usbduxsub->sem);
		return err;
	}
	err = FUNC2(this_usbduxsub, SENDDIOBITSCOMMAND);
	if (err < 0) {
		FUNC4(&this_usbduxsub->sem);
		return err;
	}

	data[1] = FUNC1(this_usbduxsub->insnBuffer[1]);
	FUNC4(&this_usbduxsub->sem);
	return 2;
}