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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ADD ; 
 int /*<<< orphan*/  REG_DAC ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
			 struct comedi_insn *insn, unsigned int *data)
{
	int i;
	int chan = FUNC1(insn->chanspec);
	unsigned short val;

/* printk("s526_ao_winsn\n"); */
	val = chan << 1;
/* outw(val, dev->iobase + REG_DAC); */
	FUNC2(val, FUNC0(REG_DAC));

	/* Writing a list of values to an AO channel is probably not
	 * very useful, but that's how the interface is defined. */
	for (i = 0; i < insn->n; i++) {
		/* a typical programming sequence */
/* outw(data[i], dev->iobase + REG_ADD);    write the data to preload register */
		FUNC2(data[i], FUNC0(REG_ADD));	/*  write the data to preload register */
		devpriv->ao_readback[chan] = data[i];
/* outw(val + 1, dev->iobase + REG_DAC);  starts the D/A conversion. */
		FUNC2(val + 1, FUNC0(REG_DAC));	/*  starts the D/A conversion. */
	}

	/* return the number of samples read/written */
	return i;
}