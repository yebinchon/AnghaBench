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

/* Variables and functions */
 int /*<<< orphan*/  AR9170_GPIO_REG_PORT_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC3();

#ifdef CONFIG_CARL9170FW_GPIO_INTERRUPT
	gpio_timer();
#endif /* CONFIG_CARL9170FW_GPIO_INTERRUPT */

#ifdef CONFIG_CARL9170FW_DEBUG_LED_HEARTBEAT
	set(AR9170_GPIO_REG_PORT_DATA, get(AR9170_GPIO_REG_PORT_DATA) ^ 1);
#endif /* CONFIG_CARL9170FW_DEBUG_LED_HEARTBEAT */
}