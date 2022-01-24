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
struct unioxx5_subd_priv {int* usp_module_type; } ;
struct comedi_subdevice {struct unioxx5_subd_priv* private; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MODULE_DIGITAL ; 
 int /*<<< orphan*/  FUNC1 (struct unioxx5_subd_priv*,unsigned int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct unioxx5_subd_priv*,unsigned int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *subdev,
				struct comedi_insn *insn, unsigned int *data)
{
	struct unioxx5_subd_priv *usp = subdev->private;
	int channel, type;

	channel = FUNC0(insn->chanspec);
	type = usp->usp_module_type[channel / 2];	/* defining module type(analog or digital) */

	if (type == MODULE_DIGITAL) {
		if (!FUNC2(usp, data, channel, dev->minor))
			return -1;
	} else {
		if (!FUNC1(usp, data, channel, dev->minor))
			return -1;
	}

	return 1;
}