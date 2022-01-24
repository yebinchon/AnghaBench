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
typedef  int /*<<< orphan*/  uint32_t ;
struct carlu {int dummy; } ;

/* Variables and functions */
 int AR9170_GPIO_PORT_LED_0 ; 
 int AR9170_GPIO_PORT_LED_1 ; 
 int /*<<< orphan*/  AR9170_GPIO_REG_PORT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct carlu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct carlu *ar)
{
	uint32_t gpio;

#define CHK(cmd)				\
	do {					\
		int __err = cmd;		\
		if ((__err))			\
			return __err;		\
	} while (0)

	CHK(FUNC2(ar, AR9170_GPIO_REG_PORT_DATA, &gpio));
	FUNC4("GPIO state:%x\n", gpio);

	/* turn both LEDs on */
	CHK(FUNC3(ar, AR9170_GPIO_REG_PORT_DATA,
	    AR9170_GPIO_PORT_LED_0 | AR9170_GPIO_PORT_LED_1));

	FUNC1(700);

	CHK(FUNC2(ar, AR9170_GPIO_REG_PORT_DATA, &gpio));
	FUNC4("GPIO state:%x\n", gpio);

	/* turn LEDs off everything */
	CHK(FUNC3(ar, AR9170_GPIO_REG_PORT_DATA, 0));

	CHK(FUNC2(ar, AR9170_GPIO_REG_PORT_DATA, &gpio));
	FUNC4("GPIO state:%x\n", gpio);
}