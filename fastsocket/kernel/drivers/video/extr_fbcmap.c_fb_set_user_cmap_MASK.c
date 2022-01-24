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
typedef  int /*<<< orphan*/  u16 ;
struct fb_info {TYPE_1__* fbops; } ;
struct fb_cmap_user {int len; scalar_t__ start; int /*<<< orphan*/ * transp; int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; } ;
struct fb_cmap {scalar_t__ start; int /*<<< orphan*/  transp; int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_setcmap; int /*<<< orphan*/  fb_setcolreg; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct fb_cmap*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_cmap*) ; 
 int FUNC3 (struct fb_cmap*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_cmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

int FUNC7(struct fb_cmap_user *cmap, struct fb_info *info)
{
	int rc, size = cmap->len * sizeof(u16);
	struct fb_cmap umap;

	FUNC5(&umap, 0, sizeof(struct fb_cmap));
	rc = FUNC1(&umap, cmap->len, cmap->transp != NULL);
	if (rc)
		return rc;
	if (FUNC0(umap.red, cmap->red, size) ||
	    FUNC0(umap.green, cmap->green, size) ||
	    FUNC0(umap.blue, cmap->blue, size) ||
	    (cmap->transp && FUNC0(umap.transp, cmap->transp, size))) {
		rc = -EFAULT;
		goto out;
	}
	umap.start = cmap->start;
	if (!FUNC4(info)) {
		rc = -ENODEV;
		goto out;
	}
	if (cmap->start < 0 || (!info->fbops->fb_setcolreg &&
				!info->fbops->fb_setcmap)) {
		rc = -EINVAL;
		goto out1;
	}
	rc = FUNC3(&umap, info);
out1:
	FUNC6(info);
out:
	FUNC2(&umap);
	return rc;
}