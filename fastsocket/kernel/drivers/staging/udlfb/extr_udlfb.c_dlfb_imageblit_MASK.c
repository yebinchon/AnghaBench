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
struct fb_info {int /*<<< orphan*/  screen_base; struct dlfb_data* par; } ;
struct fb_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;
struct dlfb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int FUNC1 (struct dlfb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info, const struct fb_image *image)
{

	int ret;
	struct dlfb_data *dev = info->par;
	/* printk("IMAGE BLIT (1) %d %d %d %d DEPTH %d {%p}!!!\n", image->dx, image->dy, image->width, image->height, image->depth, dev->udev); */
	FUNC0(info, image);
	ret =
	    FUNC1(dev, image->dx, image->dy, image->width, image->height,
		       info->screen_base);
	/* printk("IMAGE BLIT (2) %d %d %d %d DEPTH %d {%p} %d!!!\n", image->dx, image->dy, image->width, image->height, image->depth, dev->udev, ret); */
}