#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t e; size_t rs; size_t rw; size_t bl; size_t cl; size_t da; } ;

/* Variables and functions */
 size_t BIT_MSK ; 
 int LCD_BITS ; 
 size_t LCD_BIT_BL ; 
 size_t LCD_BIT_CL ; 
 size_t LCD_BIT_DA ; 
 size_t LCD_BIT_E ; 
 size_t LCD_BIT_RS ; 
 size_t LCD_BIT_RW ; 
 size_t LCD_PORT_C ; 
 TYPE_1__ bits ; 
 int*** lcd_bits ; 
 int /*<<< orphan*/  pprt ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	int val, bit;

	val = FUNC0(pprt);
	for (bit = 0; bit < LCD_BITS; bit++)
		val &= lcd_bits[LCD_PORT_C][bit][BIT_MSK];

	val |= lcd_bits[LCD_PORT_C][LCD_BIT_E][bits.e]
	    | lcd_bits[LCD_PORT_C][LCD_BIT_RS][bits.rs]
	    | lcd_bits[LCD_PORT_C][LCD_BIT_RW][bits.rw]
	    | lcd_bits[LCD_PORT_C][LCD_BIT_BL][bits.bl]
	    | lcd_bits[LCD_PORT_C][LCD_BIT_CL][bits.cl]
	    | lcd_bits[LCD_PORT_C][LCD_BIT_DA][bits.da];

	FUNC1(pprt, val);
	return val;
}