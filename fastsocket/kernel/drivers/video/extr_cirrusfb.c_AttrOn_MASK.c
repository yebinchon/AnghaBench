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
struct cirrusfb_info {int /*<<< orphan*/  regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_CRT24 ; 
 int /*<<< orphan*/  VGA_ATT_IW ; 
 int /*<<< orphan*/  VGA_ATT_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const struct cirrusfb_info *cinfo)
{
	FUNC0(cinfo != NULL);

	if (FUNC2(cinfo->regbase, CL_CRT24) & 0x80) {
		/* if we're just in "write value" mode, write back the */
		/* same value as before to not modify anything */
		FUNC3(cinfo->regbase, VGA_ATT_IW,
		      FUNC1(cinfo->regbase, VGA_ATT_R));
	}
	/* turn on video bit */
/*      vga_w(cinfo->regbase, VGA_ATT_IW, 0x20); */
	FUNC3(cinfo->regbase, VGA_ATT_IW, 0x33);

	/* dummy write on Reg0 to be on "write index" mode next time */
	FUNC3(cinfo->regbase, VGA_ATT_IW, 0x00);
}