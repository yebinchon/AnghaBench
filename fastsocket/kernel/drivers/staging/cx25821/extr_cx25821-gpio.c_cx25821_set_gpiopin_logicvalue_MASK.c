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
typedef  int /*<<< orphan*/  u32 ;
struct cx25821_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_HI ; 
 int /*<<< orphan*/  GPIO_LO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cx25821_dev *dev,
					   int pin_number, int pin_logic_value)
{
	int bit = pin_number;
	u32 gpio_reg = GPIO_LO;
	u32 value = 0;

	// Check for valid pinNumber
	if (pin_number >= 47)
		return;

	FUNC2(dev, pin_number, 0);	// change to output direction

	if (pin_number > 31) {
		bit = pin_number - 31;
		gpio_reg = GPIO_HI;
	}

	value = FUNC3(gpio_reg);

	if (pin_logic_value == 0) {
		value &= FUNC0(bit);
	} else {
		value |= FUNC1(bit);
	}

	FUNC4(gpio_reg, value);
}