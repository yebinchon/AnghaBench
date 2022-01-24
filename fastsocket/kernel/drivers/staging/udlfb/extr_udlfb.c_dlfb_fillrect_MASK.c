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
struct fb_info {struct dlfb_data* par; } ;
struct fb_fillrect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  color; } ;
struct dlfb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlfb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info,
			  const struct fb_fillrect *region)
{

	unsigned char red, green, blue;
	struct dlfb_data *dev = info->par;

	FUNC1(&red, &region->color, 1);
	FUNC1(&green, &region->color + 1, 1);
	FUNC1(&blue, &region->color + 2, 1);
	FUNC0(dev, region->dx, region->dy, region->width, region->height,
		  red, green, blue);
	/* printk("FILL RECT %d %d !!!\n", region->dx, region->dy); */

}