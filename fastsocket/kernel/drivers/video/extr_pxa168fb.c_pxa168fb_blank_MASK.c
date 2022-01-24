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
struct pxa168fb_info {int is_blanked; } ;
struct fb_info {struct pxa168fb_info* par; } ;

/* Variables and functions */
 int FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 

__attribute__((used)) static int FUNC1(int blank, struct fb_info *info)
{
	struct pxa168fb_info *fbi = info->par;

	fbi->is_blanked = (blank == FB_BLANK_UNBLANK) ? 0 : 1;
	FUNC0(info);

	return 0;
}