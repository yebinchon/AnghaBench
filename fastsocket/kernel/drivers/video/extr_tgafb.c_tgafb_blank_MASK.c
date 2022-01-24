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
typedef  int u32 ;
struct tga_par {int vesa_blanked; } ;
struct fb_info {scalar_t__ par; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  TGA_HORIZ_REG ; 
 int FUNC0 (struct tga_par*,int /*<<< orphan*/ ) ; 
 int TGA_VALID_BLANK ; 
 int /*<<< orphan*/  TGA_VALID_REG ; 
 int TGA_VALID_VIDEO ; 
 int /*<<< orphan*/  TGA_VERT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct tga_par*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int
FUNC4(int blank, struct fb_info *info)
{
	struct tga_par *par = (struct tga_par *) info->par;
	u32 vhcr, vvcr, vvvr;
	unsigned long flags;

	FUNC3(flags);

	vhcr = FUNC0(par, TGA_HORIZ_REG);
	vvcr = FUNC0(par, TGA_VERT_REG);
	vvvr = FUNC0(par, TGA_VALID_REG);
	vvvr &= ~(TGA_VALID_VIDEO | TGA_VALID_BLANK);

	switch (blank) {
	case FB_BLANK_UNBLANK: /* Unblanking */
		if (par->vesa_blanked) {
			FUNC1(par, vhcr & 0xbfffffff, TGA_HORIZ_REG);
			FUNC1(par, vvcr & 0xbfffffff, TGA_VERT_REG);
			par->vesa_blanked = 0;
		}
		FUNC1(par, vvvr | TGA_VALID_VIDEO, TGA_VALID_REG);
		break;

	case FB_BLANK_NORMAL: /* Normal blanking */
		FUNC1(par, vvvr | TGA_VALID_VIDEO | TGA_VALID_BLANK,
			      TGA_VALID_REG);
		break;

	case FB_BLANK_VSYNC_SUSPEND: /* VESA blank (vsync off) */
		FUNC1(par, vvcr | 0x40000000, TGA_VERT_REG);
		FUNC1(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
		par->vesa_blanked = 1;
		break;

	case FB_BLANK_HSYNC_SUSPEND: /* VESA blank (hsync off) */
		FUNC1(par, vhcr | 0x40000000, TGA_HORIZ_REG);
		FUNC1(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
		par->vesa_blanked = 1;
		break;

	case FB_BLANK_POWERDOWN: /* Poweroff */
		FUNC1(par, vhcr | 0x40000000, TGA_HORIZ_REG);
		FUNC1(par, vvcr | 0x40000000, TGA_VERT_REG);
		FUNC1(par, vvvr | TGA_VALID_BLANK, TGA_VALID_REG);
		par->vesa_blanked = 1;
		break;
	}

	FUNC2(flags);
	return 0;
}