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
union cmReg {int value; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/ * data; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s526_gpct_config; } ;
struct TYPE_3__ {int app; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  PositionMeasurement 130 
#define  PulseTrainGeneration 129 
 int /*<<< orphan*/  REG_C0H ; 
 int /*<<< orphan*/  REG_C0L ; 
 int /*<<< orphan*/  REG_C0M ; 
#define  SinglePulseGeneration 128 
 TYPE_2__* devpriv ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int subdev_channel = FUNC1(insn->chanspec);	/*  Unpack chanspec */
	short value;
	union cmReg cmReg;

	FUNC4("s526: GPCT_INSN_WRITE on channel %d\n", subdev_channel);
	cmReg.value = FUNC2(FUNC0(REG_C0M, subdev_channel));
	FUNC4("s526: Counter Mode Register: %x\n", cmReg.value);
	/*  Check what Application of Counter this channel is configured for */
	switch (devpriv->s526_gpct_config[subdev_channel].app) {
	case PositionMeasurement:
		FUNC4("S526: INSN_WRITE: PM\n");
		FUNC3(0xFFFF & ((*data) >> 16), FUNC0(REG_C0H,
							     subdev_channel));
		FUNC3(0xFFFF & (*data), FUNC0(REG_C0L, subdev_channel));
		break;

	case SinglePulseGeneration:
		FUNC4("S526: INSN_WRITE: SPG\n");
		FUNC3(0xFFFF & ((*data) >> 16), FUNC0(REG_C0H,
							     subdev_channel));
		FUNC3(0xFFFF & (*data), FUNC0(REG_C0L, subdev_channel));
		break;

	case PulseTrainGeneration:
		/* data[0] contains the PULSE_WIDTH
		   data[1] contains the PULSE_PERIOD
		   @pre PULSE_PERIOD > PULSE_WIDTH > 0
		   The above periods must be expressed as a multiple of the
		   pulse frequency on the selected source
		 */
		FUNC4("S526: INSN_WRITE: PTG\n");
		if ((insn->data[1] > insn->data[0]) && (insn->data[0] > 0)) {
			(devpriv->s526_gpct_config[subdev_channel]).data[0] =
			    insn->data[0];
			(devpriv->s526_gpct_config[subdev_channel]).data[1] =
			    insn->data[1];
		} else {
			FUNC4("s526: INSN_WRITE: PTG: Problem with Pulse params -> %d %d\n",
				insn->data[0], insn->data[1]);
			return -EINVAL;
		}

		value = (short)((*data >> 16) & 0xFFFF);
		FUNC3(value, FUNC0(REG_C0H, subdev_channel));
		value = (short)(*data & 0xFFFF);
		FUNC3(value, FUNC0(REG_C0L, subdev_channel));
		break;
	default:		/*  Impossible */
		FUNC4
		    ("s526: INSN_WRITE: Functionality %d not implemented yet\n",
		     devpriv->s526_gpct_config[subdev_channel].app);
		return -EINVAL;
		break;
	}
	/*  return the number of samples written */
	return insn->n;
}