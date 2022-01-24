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
typedef  int u8 ;

/* Variables and functions */
 int VGA_ATC_COLOR_PAGE ; 
 int VGA_ATC_MODE ; 
 int VGA_ATC_OVERSCAN ; 
 int VGA_ATC_PEL ; 
 int VGA_ATC_PLANE_ENABLE ; 
 int /*<<< orphan*/  VGA_ATT_W ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(void)
{
	u8 count;

	FUNC1(NULL, 0x3DA);
	FUNC2(NULL, VGA_ATT_W, 0x00);

	/* All standard ATC registers (AR00 - AR14) */
	for (count = 0; count <= 0xF; count ++)
		FUNC0(count, count);

	FUNC0(VGA_ATC_MODE, 0x01);
/*	svga_wattr(VGA_ATC_MODE, 0x41); */
	FUNC0(VGA_ATC_OVERSCAN, 0x00);
	FUNC0(VGA_ATC_PLANE_ENABLE, 0x0F);
	FUNC0(VGA_ATC_PEL, 0x00);
	FUNC0(VGA_ATC_COLOR_PAGE, 0x00);

	FUNC1(NULL, 0x3DA);
	FUNC2(NULL, VGA_ATT_W, 0x20);
}