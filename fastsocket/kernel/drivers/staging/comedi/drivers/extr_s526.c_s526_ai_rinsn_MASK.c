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
struct TYPE_2__ {int s526_ai_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 unsigned int ISR_ADC_DONE ; 
 int /*<<< orphan*/  REG_ADC ; 
 int /*<<< orphan*/  REG_ADD ; 
 int /*<<< orphan*/  REG_ISR ; 
 int TIMEOUT ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
			 struct comedi_insn *insn, unsigned int *data)
{
	int n, i;
	int chan = FUNC1(insn->chanspec);
	unsigned short value;
	unsigned int d;
	unsigned int status;

	/* Set configured delay, enable channel for this channel only,
	 * select "ADC read" channel, set "ADC start" bit. */
	value = (devpriv->s526_ai_config & 0x8000) |
	    ((1 << 5) << chan) | (chan << 1) | 0x0001;

	/* convert n samples */
	for (n = 0; n < insn->n; n++) {
		/* trigger conversion */
		FUNC3(value, FUNC0(REG_ADC));
/* printk("s526: Wrote 0x%04x to ADC\n", value); */
/* printk("s526: ADC reg=0x%04x\n", inw(ADDR_REG(REG_ADC))); */

#define TIMEOUT 100
		/* wait for conversion to end */
		for (i = 0; i < TIMEOUT; i++) {
			status = FUNC2(FUNC0(REG_ISR));
			if (status & ISR_ADC_DONE) {
				FUNC3(ISR_ADC_DONE, FUNC0(REG_ISR));
				break;
			}
		}
		if (i == TIMEOUT) {
			/* printk() should be used instead of printk()
			 * whenever the code can be called from real-time. */
			FUNC4("s526: ADC(0x%04x) timeout\n",
			       FUNC2(FUNC0(REG_ISR)));
			return -ETIMEDOUT;
		}

		/* read data */
		d = FUNC2(FUNC0(REG_ADD));
/* printk("AI[%d]=0x%04x\n", n, (unsigned short)(d & 0xFFFF)); */

		/* munge data */
		data[n] = d ^ 0x8000;
	}

	/* return the number of samples read/written */
	return n;
}