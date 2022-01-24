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
struct fb_info {struct epson1355_par* par; } ;
struct epson1355_par {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct epson1355_par*,int) ; 

__attribute__((used)) static int FUNC2(int blank_mode, struct fb_info *info)
{
	struct epson1355_par *par = info->par;

	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
	case FB_BLANK_NORMAL:
		FUNC1(par, 1);
		FUNC0(1);
		break;
	case FB_BLANK_VSYNC_SUSPEND:
	case FB_BLANK_HSYNC_SUSPEND:
		FUNC0(0);
		break;
	case FB_BLANK_POWERDOWN:
		FUNC0(0);
		FUNC1(par, 0);
		break;
	default:
		return -EINVAL;
	}

	/* let fbcon do a soft blank for us */
	return (blank_mode == FB_BLANK_NORMAL) ? 1 : 0;
}