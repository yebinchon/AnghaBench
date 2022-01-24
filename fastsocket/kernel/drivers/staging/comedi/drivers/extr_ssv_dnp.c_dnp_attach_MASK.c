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
struct dnp_private_data {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int /*<<< orphan*/  insn_config; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 int /*<<< orphan*/  CSCDR ; 
 int /*<<< orphan*/  CSCIR ; 
 int ENOMEM ; 
 int PAMR ; 
 int PBMR ; 
 int PCMR ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  dnp_dio_insn_bits ; 
 int /*<<< orphan*/  dnp_dio_insn_config ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  range_digital ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_devconfig *it)
{

	struct comedi_subdevice *s;

	FUNC4("comedi%d: dnp: ", dev->minor);

	/* Autoprobing: this should find out which board we have. Currently only   */
	/* the 1486 board is supported and autoprobing is not implemented :-)      */
	/* dev->board_ptr = dnp_probe(dev); */

	/* Initialize the name of the board. We can use the "thisboard" macro now. */
	dev->board_name = thisboard->name;

	/* Allocate the private structure area. alloc_private() is a convenient    */
	/* macro defined in comedidev.h.                                           */
	if (FUNC0(dev, sizeof(struct dnp_private_data)) < 0)
		return -ENOMEM;

	/* Allocate the subdevice structures. alloc_subdevice() is a convenient    */
	/* macro defined in comedidev.h.                                           */

	if (FUNC1(dev, 1) < 0)
		return -ENOMEM;

	s = dev->subdevices + 0;
	/* digital i/o subdevice                                                   */
	s->type = COMEDI_SUBD_DIO;
	s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
	s->n_chan = 20;
	s->maxdata = 1;
	s->range_table = &range_digital;
	s->insn_bits = dnp_dio_insn_bits;
	s->insn_config = dnp_dio_insn_config;

	FUNC4("attached\n");

	/* We use the I/O ports 0x22,0x23 and 0xa3-0xa9, which are always
	 * allocated for the primary 8259, so we don't need to allocate them
	 * ourselves. */

	/* configure all ports as input (default)                                  */
	FUNC3(PAMR, CSCIR);
	FUNC3(0x00, CSCDR);
	FUNC3(PBMR, CSCIR);
	FUNC3(0x00, CSCDR);
	FUNC3(PCMR, CSCIR);
	FUNC3((FUNC2(CSCDR) & 0xAA), CSCDR);

	return 1;

}