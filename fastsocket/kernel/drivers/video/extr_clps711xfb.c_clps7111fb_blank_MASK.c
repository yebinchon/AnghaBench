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
struct fb_info {int dummy; } ;

/* Variables and functions */
 int EDB_PD1_LCD_DC_DC_EN ; 
 int EDB_PD2_LCDEN ; 
 int EDB_PD3_LCDBL ; 
 int /*<<< orphan*/  PDDR ; 
 int /*<<< orphan*/  SYSCON1 ; 
 int SYSCON1_LCDEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(int blank, struct fb_info *info)
{
    	if (blank) {
		if (FUNC4()) {
			/* Turn off the LCD backlight. */
			FUNC2(FUNC0(PDDR) & ~EDB_PD3_LCDBL, PDDR);

			/* Power off the LCD DC-DC converter. */
			FUNC2(FUNC0(PDDR) & ~EDB_PD1_LCD_DC_DC_EN, PDDR);

			/* Delay for a little while (half a second). */
			FUNC5(100);

			/* Power off the LCD panel. */
			FUNC2(FUNC0(PDDR) & ~EDB_PD2_LCDEN, PDDR);

			/* Power off the LCD controller. */
			FUNC3(FUNC1(SYSCON1) & ~SYSCON1_LCDEN, 
					SYSCON1);
		}
	} else {
		if (FUNC4()) {
			/* Power up the LCD controller. */
			FUNC3(FUNC1(SYSCON1) | SYSCON1_LCDEN,
					SYSCON1);

			/* Power up the LCD panel. */
			FUNC2(FUNC0(PDDR) | EDB_PD2_LCDEN, PDDR);

			/* Delay for a little while. */
			FUNC5(100);

			/* Power up the LCD DC-DC converter. */
			FUNC2(FUNC0(PDDR) | EDB_PD1_LCD_DC_DC_EN,
					PDDR);

			/* Turn on the LCD backlight. */
			FUNC2(FUNC0(PDDR) | EDB_PD3_LCDBL, PDDR);
		}
	}
	return 0;
}