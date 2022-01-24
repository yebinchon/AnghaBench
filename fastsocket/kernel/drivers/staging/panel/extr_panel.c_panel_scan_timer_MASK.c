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
 scalar_t__ FLASH_LIGHT_TEMPO ; 
 scalar_t__ INPUT_POLL_TIME ; 
 int LCD_FLAG_L ; 
 int /*<<< orphan*/  inputs_stable ; 
 scalar_t__ jiffies ; 
 scalar_t__ keypad_enabled ; 
 scalar_t__ keypad_initialized ; 
 scalar_t__ keypressed ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ lcd_enabled ; 
 int lcd_flags ; 
 scalar_t__ lcd_initialized ; 
 scalar_t__ light_tempo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ phys_curr ; 
 scalar_t__ phys_prev ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  scan_timer ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	if (keypad_enabled && keypad_initialized) {
		if (FUNC4(&pprt_lock)) {
			FUNC3();
			FUNC5(&pprt_lock);	/* no need for the parport anymore */
		}

		if (!inputs_stable || phys_curr != phys_prev)
			FUNC2();
	}

	if (lcd_enabled && lcd_initialized) {
		if (keypressed) {
			if (light_tempo == 0 && ((lcd_flags & LCD_FLAG_L) == 0))
				FUNC0(1);
			light_tempo = FLASH_LIGHT_TEMPO;
		} else if (light_tempo > 0) {
			light_tempo--;
			if (light_tempo == 0 && ((lcd_flags & LCD_FLAG_L) == 0))
				FUNC0(0);
		}
	}

	FUNC1(&scan_timer, jiffies + INPUT_POLL_TIME);
}