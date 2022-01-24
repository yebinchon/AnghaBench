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
 int LCD_FLAG_B ; 
 int LCD_FLAG_C ; 
 int LCD_FLAG_D ; 
 int LCD_FLAG_F ; 
 int LCD_FLAG_L ; 
 int LCD_FLAG_N ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int lcd_flags ; 
 int lcd_height ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{

	lcd_flags = ((lcd_height > 1) ? LCD_FLAG_N : 0)
	    | LCD_FLAG_D | LCD_FLAG_C | LCD_FLAG_B;

	FUNC3(20);		/* wait 20 ms after power-up for the paranoid */

	FUNC2(0x30);	/* 8bits, 1 line, small fonts */
	FUNC3(10);
	FUNC2(0x30);	/* 8bits, 1 line, small fonts */
	FUNC3(10);
	FUNC2(0x30);	/* 8bits, 1 line, small fonts */
	FUNC3(10);

	FUNC2(0x30	/* set font height and lines number */
		      | ((lcd_flags & LCD_FLAG_F) ? 4 : 0)
		      | ((lcd_flags & LCD_FLAG_N) ? 8 : 0)
	    );
	FUNC3(10);

	FUNC2(0x08);	/* display off, cursor off, blink off */
	FUNC3(10);

	FUNC2(0x08	/* set display mode */
		      | ((lcd_flags & LCD_FLAG_D) ? 4 : 0)
		      | ((lcd_flags & LCD_FLAG_C) ? 2 : 0)
		      | ((lcd_flags & LCD_FLAG_B) ? 1 : 0)
	    );

	FUNC0((lcd_flags & LCD_FLAG_L) ? 1 : 0);

	FUNC3(10);

	FUNC2(0x06);	/* entry mode set : increment, cursor shifting */

	FUNC1();
}