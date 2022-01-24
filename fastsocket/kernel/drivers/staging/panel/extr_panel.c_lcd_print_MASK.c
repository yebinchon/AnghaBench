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
 scalar_t__ lcd_bwidth ; 
 char* lcd_char_conv ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(char c)
{
	if (lcd_addr_x < lcd_bwidth) {
		if (lcd_char_conv != NULL)
			c = lcd_char_conv[(unsigned char)c];
		FUNC1(c);
		lcd_addr_x++;
	}
	/* prevents the cursor from wrapping onto the next line */
	if (lcd_addr_x == lcd_bwidth)
		FUNC0();
}