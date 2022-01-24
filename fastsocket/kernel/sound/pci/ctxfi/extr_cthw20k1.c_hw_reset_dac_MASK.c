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
typedef  int u32 ;
typedef  int u16 ;
struct hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO ; 
 scalar_t__ FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*) ; 
 scalar_t__ FUNC5 (struct hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hw *hw)
{
	u32 i;
	u16 gpioorg;
	unsigned int ret;

	if (FUNC5(hw))
		return -1;

	do {
		ret = FUNC1(hw, 0xEC);
	} while (!(ret & 0x800000));
	FUNC3(hw, 0xEC, 0x05);  /* write to i2c status control */

	/* To be effective, need to reset the DAC twice. */
	for (i = 0; i < 2;  i++) {
		/* set gpio */
		FUNC7(100);
		gpioorg = (u16)FUNC0(hw, GPIO);
		gpioorg &= 0xfffd;
		FUNC2(hw, GPIO, gpioorg);
		FUNC7(1);
		FUNC2(hw, GPIO, gpioorg | 0x2);
	}

	FUNC6(hw, 0x00180080, 0x01, 0x80);
	FUNC6(hw, 0x00180080, 0x02, 0x10);

	FUNC4(hw);

	return 0;
}