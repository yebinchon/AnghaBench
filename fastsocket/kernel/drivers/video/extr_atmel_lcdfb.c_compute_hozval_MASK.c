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
 unsigned long ATMEL_LCDC_DISTYPE ; 
 unsigned long ATMEL_LCDC_DISTYPE_STNCOLOR ; 
 unsigned long ATMEL_LCDC_DISTYPE_TFT ; 
 unsigned long ATMEL_LCDC_IFWIDTH ; 
 unsigned long ATMEL_LCDC_IFWIDTH_4 ; 
 unsigned long ATMEL_LCDC_IFWIDTH_8 ; 
 unsigned long ATMEL_LCDC_SCANMOD ; 
 unsigned long ATMEL_LCDC_SCANMOD_DUAL ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long xres, unsigned long lcdcon2)
{
	unsigned long value;

	if (!(FUNC2() || FUNC3()
		|| FUNC1()))
		return xres;

	value = xres;
	if ((lcdcon2 & ATMEL_LCDC_DISTYPE) != ATMEL_LCDC_DISTYPE_TFT) {
		/* STN display */
		if ((lcdcon2 & ATMEL_LCDC_DISTYPE) == ATMEL_LCDC_DISTYPE_STNCOLOR) {
			value *= 3;
		}
		if ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_4
		   || ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_8
		      && (lcdcon2 & ATMEL_LCDC_SCANMOD) == ATMEL_LCDC_SCANMOD_DUAL ))
			value = FUNC0(value, 4);
		else
			value = FUNC0(value, 8);
	}

	return value;
}