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
struct comedi_insn {unsigned int* data; unsigned int subdev; int /*<<< orphan*/  chanspec; scalar_t__ n; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  INSN_READ ; 
 int FUNC1 (void*,struct comedi_insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_insn*,int /*<<< orphan*/ ,int) ; 

int FUNC3(void *dev, unsigned int subdev,
			  unsigned int chan, unsigned int range,
			  unsigned int aref)
{
	struct comedi_insn insn;
	unsigned int dummy_data;

	FUNC2(&insn, 0, sizeof(insn));
	insn.insn = INSN_READ;
	insn.n = 0;
	insn.data = &dummy_data;
	insn.subdev = subdev;
	insn.chanspec = FUNC0(chan, range, aref);

	return FUNC1(dev, &insn);
}