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
struct vx_core {int dummy; } ;

/* Variables and functions */
 unsigned int VX_CNTRL_REGISTER_VALUE ; 
 unsigned int VX_USERBIT0_MASK ; 
 unsigned int VX_USERBIT1_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct vx_core *chip, unsigned int port, unsigned int counts, unsigned char data)
{
	unsigned int i;

	for (i = 0; i < counts; i++) {
		unsigned int val;

		/* set the clock bit to 0. */
		val = VX_CNTRL_REGISTER_VALUE & ~VX_USERBIT0_MASK;
		FUNC2(chip, port, val);
		FUNC1(chip, port);
		FUNC0(1);

		if (data & (1 << i))
			val |= VX_USERBIT1_MASK;
		else
			val &= ~VX_USERBIT1_MASK;
		FUNC2(chip, port, val);
		FUNC1(chip, port);

		/* set the clock bit to 1. */
		val |= VX_USERBIT0_MASK;
		FUNC2(chip, port, val);
		FUNC1(chip, port);
		FUNC0(1);
	}
	return 0;
}