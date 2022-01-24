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
#define  ADC_AUX 132 
#define  ADC_LINEIN 131 
#define  ADC_MICIN 130 
#define  ADC_NONE 129 
#define  ADC_VIDEO 128 
 int /*<<< orphan*/  GPIO ; 
 int /*<<< orphan*/  ID0 ; 
 int FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*) ; 
 scalar_t__ FUNC5 (struct hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct hw*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct hw *hw, int input, int mic20db)
{
	u16 gpioorg;
	u16 input_source;
	u32 adcdata;
	unsigned int ret;

	input_source = 0x100;  /* default to analog */
	switch (input) {
	case ADC_MICIN:
		adcdata = 0x1;
		input_source = 0x180;  /* set GPIO7 to select Mic */
		break;
	case ADC_LINEIN:
		adcdata = 0x2;
		break;
	case ADC_VIDEO:
		adcdata = 0x4;
		break;
	case ADC_AUX:
		adcdata = 0x8;
		break;
	case ADC_NONE:
		adcdata = 0x0;
		input_source = 0x0;  /* set to Digital */
		break;
	default:
		adcdata = 0x0;
		break;
	}

	if (FUNC5(hw))
		return -1;

	do {
		ret = FUNC1(hw, 0xEC);
	} while (!(ret & 0x800000)); /* i2c ready poll */
	FUNC3(hw, 0xEC, 0x05);  /* write to i2c status control */

	FUNC6(hw, 0x001a0080, 0x0e, 0x08);
	FUNC6(hw, 0x001a0080, 0x18, 0x0a);
	FUNC6(hw, 0x001a0080, 0x28, 0x86);
	FUNC6(hw, 0x001a0080, 0x2a, adcdata);

	if (mic20db) {
		FUNC6(hw, 0x001a0080, 0x1c, 0xf7);
		FUNC6(hw, 0x001a0080, 0x1e, 0xf7);
	} else {
		FUNC6(hw, 0x001a0080, 0x1c, 0xcf);
		FUNC6(hw, 0x001a0080, 0x1e, 0xcf);
	}

	if (!(FUNC0(hw, ID0) & 0x100))
		FUNC6(hw, 0x001a0080, 0x16, 0x26);

	FUNC4(hw);

	gpioorg = (u16)FUNC0(hw,  GPIO);
	gpioorg &= 0xfe7f;
	gpioorg |= input_source;
	FUNC2(hw, GPIO, gpioorg);

	return 0;
}