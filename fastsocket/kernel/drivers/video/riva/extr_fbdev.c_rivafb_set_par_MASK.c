#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* LockUnlock ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct riva_par {int cursor_reset; TYPE_4__ riva; } ;
struct TYPE_7__ {int scan_align; } ;
struct TYPE_6__ {int xres_virtual; int bits_per_pixel; } ;
struct TYPE_5__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {int flags; TYPE_3__ pixmap; TYPE_2__ var; TYPE_1__ fix; struct riva_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct riva_par*,int,int) ; 
 int FBINFO_HWACCEL_DISABLED ; 
 int /*<<< orphan*/  FB_VISUAL_DIRECTCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info)
{
	struct riva_par *par = info->par;
	int rc = 0;

	FUNC1();
	/* vgaHWunlock() + riva unlock (0x7F) */
	FUNC0(par, 0x11, 0xFF);
	par->riva.LockUnlock(&par->riva, 0);
	rc = FUNC3(info);
	if (rc)
		goto out;
	if(!(info->flags & FBINFO_HWACCEL_DISABLED))
		FUNC4(info);
	
	par->cursor_reset = 1;
	info->fix.line_length = (info->var.xres_virtual * (info->var.bits_per_pixel >> 3));
	info->fix.visual = (info->var.bits_per_pixel == 8) ?
				FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_DIRECTCOLOR;

	if (info->flags & FBINFO_HWACCEL_DISABLED)
		info->pixmap.scan_align = 1;
	else
		info->pixmap.scan_align = 4;

out:
	FUNC2();
	return rc;
}