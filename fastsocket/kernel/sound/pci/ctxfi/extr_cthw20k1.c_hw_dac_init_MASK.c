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
struct hw {scalar_t__ model; } ;
struct dac_conf {int msr; } ;

/* Variables and functions */
 scalar_t__ CTSB055X ; 
 int /*<<< orphan*/  GPIO ; 
 scalar_t__ FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hw*) ; 
 scalar_t__ FUNC6 (struct hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct hw*,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct hw *hw, const struct dac_conf *info)
{
	u32 data;
	u16 gpioorg;
	unsigned int ret;

	if (hw->model == CTSB055X) {
		/* SB055x, unmute outputs */
		gpioorg = (u16)FUNC0(hw, GPIO);
		gpioorg &= 0xffbf;	/* set GPIO6 to low */
		gpioorg |= 2;		/* set GPIO1 to high */
		FUNC3(hw, GPIO, gpioorg);
		return 0;
	}

	/* mute outputs */
	gpioorg = (u16)FUNC0(hw, GPIO);
	gpioorg &= 0xffbf;
	FUNC3(hw, GPIO, gpioorg);

	FUNC2(hw);

	if (FUNC6(hw))
		return -1;

	FUNC4(hw, 0xEC, 0x05);  /* write to i2c status control */
	do {
		ret = FUNC1(hw, 0xEC);
	} while (!(ret & 0x800000));

	switch (info->msr) {
	case 1:
		data = 0x24;
		break;
	case 2:
		data = 0x25;
		break;
	case 4:
		data = 0x26;
		break;
	default:
		data = 0x24;
		break;
	}

	FUNC7(hw, 0x00180080, 0x06, data);
	FUNC7(hw, 0x00180080, 0x09, data);
	FUNC7(hw, 0x00180080, 0x0c, data);
	FUNC7(hw, 0x00180080, 0x0f, data);

	FUNC5(hw);

	/* unmute outputs */
	gpioorg = (u16)FUNC0(hw, GPIO);
	gpioorg = gpioorg | 0x40;
	FUNC3(hw, GPIO, gpioorg);

	return 0;
}