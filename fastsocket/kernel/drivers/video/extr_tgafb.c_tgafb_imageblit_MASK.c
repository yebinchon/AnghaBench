#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_image {int depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct fb_image const*) ; 

__attribute__((used)) static void
FUNC3(struct fb_info *info, const struct fb_image *image)
{
	unsigned int is8bpp = info->var.bits_per_pixel == 8;

	/* If a mono image, regardless of FB depth, go do it. */
	if (image->depth == 1) {
		FUNC2(info, image);
		return;
	}

	/* For copies that aren't pixel expansion, there's little we
	   can do better than the generic code.  */
	/* ??? There is a DMA write mode; I wonder if that could be
	   made to pull the data from the image buffer...  */
	if (image->depth == info->var.bits_per_pixel) {
		FUNC0(info, image);
		return;
	}

	/* If 24-plane FB and the image is 8-plane with CLUT, we can do it. */
	if (!is8bpp && image->depth == 8) {
		FUNC1(info, image);
		return;
	}

	/* Silently return... */
}