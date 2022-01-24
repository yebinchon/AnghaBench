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
 scalar_t__ lcd_addr_x ; 
 scalar_t__ lcd_addr_y ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int lcd_height ; 
 int lcd_hwidth ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int pos;
	lcd_addr_x = lcd_addr_y = 0;
	FUNC0();

	FUNC2(&pprt_lock);
	for (pos = 0; pos < lcd_height * lcd_hwidth; pos++) {
		FUNC1(0x5F);	/* R/W=W, RS=1 */
		FUNC1(' ' & 0x0F);
		FUNC1((' ' >> 4) & 0x0F);
		FUNC4(40);	/* the shortest data takes at least 40 us */
	}
	FUNC3(&pprt_lock);

	lcd_addr_x = lcd_addr_y = 0;
	FUNC0();
}