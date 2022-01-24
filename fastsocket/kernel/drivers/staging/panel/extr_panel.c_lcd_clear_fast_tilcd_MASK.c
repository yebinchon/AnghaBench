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
 int /*<<< orphan*/  pprt ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC5(void)
{
	int pos;
	lcd_addr_x = lcd_addr_y = 0;
	FUNC0();

	FUNC1(&pprt_lock);
	for (pos = 0; pos < lcd_height * lcd_hwidth; pos++) {
		/* present the data to the data port */
		FUNC4(pprt, ' ');
		FUNC3(60);
	}

	FUNC2(&pprt_lock);

	lcd_addr_x = lcd_addr_y = 0;
	FUNC0();
}