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
struct usbduxsub {int /*<<< orphan*/  sem; int /*<<< orphan*/ * insnBuffer; int /*<<< orphan*/ * dux_commands; TYPE_1__* interface; scalar_t__ ai_cmd_running; int /*<<< orphan*/  probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; int /*<<< orphan*/  subdev; } ;
struct comedi_device {int /*<<< orphan*/  minor; struct usbduxsub* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SENDSINGLEAD ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usbduxsub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int i;
	unsigned int one = 0;
	int chan, range;
	int err;
	struct usbduxsub *this_usbduxsub = dev->private;

	if (!this_usbduxsub)
		return 0;

	FUNC3(&this_usbduxsub->interface->dev,
		"comedi%d: ai_insn_read, insn->n=%d, insn->subdev=%d\n",
		dev->minor, insn->n, insn->subdev);

	FUNC5(&this_usbduxsub->sem);
	if (!(this_usbduxsub->probed)) {
		FUNC9(&this_usbduxsub->sem);
		return -ENODEV;
	}
	if (this_usbduxsub->ai_cmd_running) {
		FUNC4(&this_usbduxsub->interface->dev,
			"comedi%d: ai_insn_read not possible. "
			"Async Command is running.\n", dev->minor);
		FUNC9(&this_usbduxsub->sem);
		return 0;
	}

	/* sample one channel */
	chan = FUNC0(insn->chanspec);
	range = FUNC1(insn->chanspec);
	/* set command for the first channel */
	this_usbduxsub->dux_commands[1] = FUNC2(chan, range);

	/* adc commands */
	err = FUNC8(this_usbduxsub, SENDSINGLEAD);
	if (err < 0) {
		FUNC9(&this_usbduxsub->sem);
		return err;
	}

	for (i = 0; i < insn->n; i++) {
		err = FUNC7(this_usbduxsub, SENDSINGLEAD);
		if (err < 0) {
			FUNC9(&this_usbduxsub->sem);
			return 0;
		}
		one = FUNC6(this_usbduxsub->insnBuffer[1]);
		if (FUNC1(insn->chanspec) <= 1)
			one = one ^ 0x800;

		data[i] = one;
	}
	FUNC9(&this_usbduxsub->sem);
	return i;
}