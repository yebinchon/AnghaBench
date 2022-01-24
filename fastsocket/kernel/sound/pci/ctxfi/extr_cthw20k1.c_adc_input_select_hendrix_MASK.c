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
struct hw {int dummy; } ;
typedef  enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;

/* Variables and functions */
#define  ADC_LINEIN 129 
#define  ADC_MICIN 128 
 int /*<<< orphan*/  GPIO ; 
 int FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*) ; 
 scalar_t__ FUNC5 (struct hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct hw*,int,int,int) ; 

__attribute__((used)) static int
FUNC7(struct hw *hw, enum ADCSRC type, unsigned char boost)
{
	u32 data;
	u32 i2c_data;
	unsigned int ret;

	if (FUNC5(hw))
		return -1;

	do {
		ret = FUNC1(hw, 0xEC);
	} while (!(ret & 0x800000)); /* i2c ready poll */
	/* set i2c access mode as Direct Control */
	FUNC3(hw, 0xEC, 0x05);

	data = FUNC0(hw, GPIO);
	switch (type) {
	case ADC_MICIN:
		data |= (0x1 << 7);
		i2c_data = 0x1;  /* Mic-in */
		break;
	case ADC_LINEIN:
		data &= ~(0x1 << 7);
		i2c_data = 0x2; /* Line-in */
		break;
	default:
		FUNC4(hw);
		return -1;
	}
	FUNC2(hw, GPIO, data);
	FUNC6(hw, 0x001a0080, 0x2a, i2c_data);
	if (boost) {
		FUNC6(hw, 0x001a0080, 0x1c, 0xe7); /* +12dB boost */
		FUNC6(hw, 0x001a0080, 0x1e, 0xe7); /* +12dB boost */
	} else {
		FUNC6(hw, 0x001a0080, 0x1c, 0xcf); /* No boost */
		FUNC6(hw, 0x001a0080, 0x1e, 0xcf); /* No boost */
	}

	FUNC4(hw);

	return 0;
}