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
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WM8775_AADCL ; 
 int /*<<< orphan*/  WM8775_AADCR ; 
 int /*<<< orphan*/  WM8775_ADCMC ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct hw *hw, enum ADCSRC type)
{
	u32 data;

	data = FUNC3(hw, GPIO_DATA);
	switch (type) {
	case ADC_MICIN:
		data |= (0x1 << 14);
		FUNC4(hw, GPIO_DATA, data);
		FUNC2(hw, FUNC0(WM8775_ADCMC, 0x101),
				FUNC1(0x101)); /* Mic-in */
		FUNC2(hw, FUNC0(WM8775_AADCL, 0xE7),
				FUNC1(0xE7)); /* +12dB boost */
		FUNC2(hw, FUNC0(WM8775_AADCR, 0xE7),
				FUNC1(0xE7)); /* +12dB boost */
		break;
	case ADC_LINEIN:
		data &= ~(0x1 << 14);
		FUNC4(hw, GPIO_DATA, data);
		FUNC2(hw, FUNC0(WM8775_ADCMC, 0x102),
				FUNC1(0x102)); /* Line-in */
		FUNC2(hw, FUNC0(WM8775_AADCL, 0xCF),
				FUNC1(0xCF)); /* No boost */
		FUNC2(hw, FUNC0(WM8775_AADCR, 0xCF),
				FUNC1(0xCF)); /* No boost */
		break;
	default:
		break;
	}

	return 0;
}