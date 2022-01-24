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
 int /*<<< orphan*/  H_PERIOD ; 
 int /*<<< orphan*/  H_PULSE ; 
 int /*<<< orphan*/  TIMER0_id ; 
 int /*<<< orphan*/  TIMER1_id ; 
 int TIMER_CLK_SEL ; 
 int TIMER_EMU_RUN ; 
 int TIMER_MODE_PWM ; 
 int TIMER_PERIOD_CNT ; 
 int TIMER_TIN_SEL ; 
 int /*<<< orphan*/  V_PERIOD ; 
 int /*<<< orphan*/  V_PULSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{

	FUNC0();

	FUNC2(TIMER0_id, H_PERIOD);
	FUNC3(TIMER0_id, H_PULSE);
	FUNC1(TIMER0_id, TIMER_MODE_PWM | TIMER_PERIOD_CNT |
				      TIMER_TIN_SEL | TIMER_CLK_SEL|
				      TIMER_EMU_RUN);

	FUNC2(TIMER1_id, V_PERIOD);
	FUNC3(TIMER1_id, V_PULSE);
	FUNC1(TIMER1_id, TIMER_MODE_PWM | TIMER_PERIOD_CNT |
				      TIMER_TIN_SEL | TIMER_CLK_SEL |
				      TIMER_EMU_RUN);

}