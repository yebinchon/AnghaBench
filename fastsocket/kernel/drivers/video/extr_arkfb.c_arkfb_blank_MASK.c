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
struct fb_info {int /*<<< orphan*/  node; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(int blank_mode, struct fb_info *info)
{
	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
		FUNC0("fb%d: unblank\n", info->node);
		FUNC2(0x01, 0x00, 0x20);
		FUNC1(0x17, 0x80, 0x80);
		break;
	case FB_BLANK_NORMAL:
		FUNC0("fb%d: blank\n", info->node);
		FUNC2(0x01, 0x20, 0x20);
		FUNC1(0x17, 0x80, 0x80);
		break;
	case FB_BLANK_POWERDOWN:
	case FB_BLANK_HSYNC_SUSPEND:
	case FB_BLANK_VSYNC_SUSPEND:
		FUNC0("fb%d: sync down\n", info->node);
		FUNC2(0x01, 0x20, 0x20);
		FUNC1(0x17, 0x00, 0x80);
		break;
	}
	return 0;
}