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
 int MDA_MODE_BLINK_EN ; 
 int MDA_MODE_VIDEO_EN ; 
 int /*<<< orphan*/  mda_gfx_port ; 
 int /*<<< orphan*/  mda_mode_port ; 
 int /*<<< orphan*/  mda_status_port ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(97, 0x00);		/* horizontal total */
	FUNC1(80, 0x01);		/* horizontal displayed */
	FUNC1(82, 0x02);		/* horizontal sync pos */
	FUNC1(15, 0x03);		/* horizontal sync width */

	FUNC1(25, 0x04);		/* vertical total */
	FUNC1(6,  0x05);		/* vertical total adjust */
	FUNC1(25, 0x06);		/* vertical displayed */
	FUNC1(25, 0x07);		/* vertical sync pos */

	FUNC1(2,  0x08);		/* interlace mode */
	FUNC1(13, 0x09);		/* maximum scanline */
	FUNC1(12, 0x0a);		/* cursor start */
	FUNC1(13, 0x0b);		/* cursor end */

	FUNC2(0x0000, 0x0c);	/* start address */
	FUNC2(0x0000, 0x0e);	/* cursor location */

	FUNC0(MDA_MODE_VIDEO_EN | MDA_MODE_BLINK_EN, mda_mode_port);
	FUNC0(0x00, mda_status_port);
	FUNC0(0x00, mda_gfx_port);
}