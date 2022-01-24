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
struct comedi_insn {int n; unsigned int* data; unsigned int subdev; int /*<<< orphan*/  insn; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_BITS ; 
 int FUNC0 (void*,struct comedi_insn*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_insn*,int /*<<< orphan*/ ,int) ; 

int FUNC2(void *dev, unsigned int subdev, unsigned int mask,
			unsigned int *bits)
{
	struct comedi_insn insn;
	unsigned int data[2];
	int ret;

	FUNC1(&insn, 0, sizeof(insn));
	insn.insn = INSN_BITS;
	insn.n = 2;
	insn.data = data;
	insn.subdev = subdev;

	data[0] = mask;
	data[1] = *bits;

	ret = FUNC0(dev, &insn);

	*bits = data[1];

	return ret;
}