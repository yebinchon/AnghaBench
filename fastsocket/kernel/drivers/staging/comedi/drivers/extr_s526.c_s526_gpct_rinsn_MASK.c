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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_C0H ; 
 int /*<<< orphan*/  REG_C0L ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int i;			/*  counts the Data */
	int counter_channel = FUNC1(insn->chanspec);
	unsigned short datalow;
	unsigned short datahigh;

	/*  Check if (n > 0) */
	if (insn->n <= 0) {
		FUNC3("s526: INSN_READ: n should be > 0\n");
		return -EINVAL;
	}
	/*  Read the low word first */
	for (i = 0; i < insn->n; i++) {
		datalow = FUNC2(FUNC0(REG_C0L, counter_channel));
		datahigh = FUNC2(FUNC0(REG_C0H, counter_channel));
		data[i] = (int)(datahigh & 0x00FF);
		data[i] = (data[i] << 16) | (datalow & 0xFFFF);
/* printk("s526 GPCT[%d]: %x(0x%04x, 0x%04x)\n", counter_channel, data[i], datahigh, datalow); */
	}
	return i;
}