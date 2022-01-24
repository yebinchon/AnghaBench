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
struct fb_info {struct arcfb_par* par; } ;
struct fb_copyarea {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;
struct arcfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arcfb_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_copyarea const*) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info,
			   const struct fb_copyarea *area)
{
	struct arcfb_par *par = info->par;

	FUNC1(info, area);

	/* update the physical lcd */
	FUNC0(par, area->dx, area->dy, area->width, area->height);
}