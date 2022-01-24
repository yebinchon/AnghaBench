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
struct usbduxsub {int /*<<< orphan*/  sem; int /*<<< orphan*/ * insnBuffer; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  READCOUNTERCOMMAND ; 
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
	int chan = insn->chanspec;
	int err;

	if (!this_usbduxsub)
		return -EFAULT;

	FUNC0(&this_usbduxsub->sem);

	if (!(this_usbduxsub->probed)) {
		FUNC4(&this_usbduxsub->sem);
		return -ENODEV;
	}

	err = FUNC3(this_usbduxsub, READCOUNTERCOMMAND);
	if (err < 0) {
		FUNC4(&this_usbduxsub->sem);
		return err;
	}

	err = FUNC2(this_usbduxsub, READCOUNTERCOMMAND);
	if (err < 0) {
		FUNC4(&this_usbduxsub->sem);
		return err;
	}

	data[0] = FUNC1(this_usbduxsub->insnBuffer[chan + 1]);
	FUNC4(&this_usbduxsub->sem);
	return 1;
}