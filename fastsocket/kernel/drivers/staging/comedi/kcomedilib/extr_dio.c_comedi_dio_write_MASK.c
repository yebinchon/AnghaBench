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
struct comedi_insn {int n; unsigned int* data; unsigned int subdev; int /*<<< orphan*/  chanspec; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSN_WRITE ; 
 int FUNC1 (void*,struct comedi_insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_insn*,int /*<<< orphan*/ ,int) ; 

int FUNC3(void *dev, unsigned int subdev, unsigned int chan,
		     unsigned int val)
{
	struct comedi_insn insn;

	FUNC2(&insn, 0, sizeof(insn));
	insn.insn = INSN_WRITE;
	insn.n = 1;
	insn.data = &val;
	insn.subdev = subdev;
	insn.chanspec = FUNC0(chan, 0, 0);

	return FUNC1(dev, &insn);
}