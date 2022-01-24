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
struct tdfx_par {int dummy; } ;
struct fb_info {struct tdfx_par* par; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DACMODE ; 
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int) ; 
 int FUNC2 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tdfx_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tdfx_par*) ; 
 int /*<<< orphan*/  FUNC5 (struct tdfx_par*) ; 

__attribute__((used)) static int FUNC6(int blank, struct fb_info *info)
{
	struct tdfx_par *par = info->par;
	int vgablank = 1;
	u32 dacmode = FUNC2(par, DACMODE);

	dacmode &= ~(FUNC0(1) | FUNC0(3));

	switch (blank) {
	case FB_BLANK_UNBLANK: /* Screen: On; HSync: On, VSync: On */
		vgablank = 0;
		break;
	case FB_BLANK_NORMAL: /* Screen: Off; HSync: On, VSync: On */
		break;
	case FB_BLANK_VSYNC_SUSPEND: /* Screen: Off; HSync: On, VSync: Off */
		dacmode |= FUNC0(3);
		break;
	case FB_BLANK_HSYNC_SUSPEND: /* Screen: Off; HSync: Off, VSync: On */
		dacmode |= FUNC0(1);
		break;
	case FB_BLANK_POWERDOWN: /* Screen: Off; HSync: Off, VSync: Off */
		dacmode |= FUNC0(1) | FUNC0(3);
		break;
	}

	FUNC1(par, 1);
	FUNC3(par, DACMODE, dacmode);
	if (vgablank)
		FUNC4(par);
	else
		FUNC5(par);
	return 0;
}