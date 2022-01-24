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
struct comedi_subdevice {int state; int io_bits; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int COMEDI_INPUT ; 
 unsigned int COMEDI_OUTPUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_INPUT 130 
#define  INSN_CONFIG_DIO_OUTPUT 129 
#define  INSN_CONFIG_DIO_QUERY 128 
 int /*<<< orphan*/  REG_DIO ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	int chan = FUNC1(insn->chanspec);
	int group, mask;

	FUNC3("S526 DIO insn_config\n");

	/* The input or output configuration of each digital line is
	 * configured by a special insn_config instruction.  chanspec
	 * contains the channel to be changed, and data[0] contains the
	 * value COMEDI_INPUT or COMEDI_OUTPUT. */

	group = chan >> 2;
	mask = 0xF << (group << 2);
	switch (data[0]) {
	case INSN_CONFIG_DIO_OUTPUT:
		s->state |= 1 << (group + 10);  // bit 10/11 set the group 1/2's mode
		s->io_bits |= mask;
		break;
	case INSN_CONFIG_DIO_INPUT:
		s->state &= ~(1 << (group + 10));// 1 is output, 0 is input.
		s->io_bits &= ~mask;
		break;
	case INSN_CONFIG_DIO_QUERY:
		data[1] = (s->io_bits & mask) ? COMEDI_OUTPUT : COMEDI_INPUT;
		return insn->n;
	default:
		return -EINVAL;
	}
	FUNC2(s->state, FUNC0(REG_DIO));

	return 1;
}