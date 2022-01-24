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
struct nvidia_par {int dummy; } ;
struct fb_info {struct nvidia_par* par; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int FUNC0 (struct nvidia_par*,int) ; 
 int FUNC1 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nvidia_par*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct nvidia_par*,int,unsigned char) ; 

__attribute__((used)) static int FUNC6(int blank, struct fb_info *info)
{
	struct nvidia_par *par = info->par;
	unsigned char tmp, vesa;

	tmp = FUNC1(par, 0x01) & ~0x20;	/* screen on/off */
	vesa = FUNC0(par, 0x1a) & ~0xc0;	/* sync on/off */

	FUNC2();

	if (blank)
		tmp |= 0x20;

	switch (blank) {
	case FB_BLANK_UNBLANK:
	case FB_BLANK_NORMAL:
		break;
	case FB_BLANK_VSYNC_SUSPEND:
		vesa |= 0x80;
		break;
	case FB_BLANK_HSYNC_SUSPEND:
		vesa |= 0x40;
		break;
	case FB_BLANK_POWERDOWN:
		vesa |= 0xc0;
		break;
	}

	FUNC5(par, 0x01, tmp);
	FUNC4(par, 0x1a, vesa);

	FUNC3();

	return 0;
}