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
struct file {struct fb_info* private_data; } ;
struct fb_info {int /*<<< orphan*/  deferred_work; int /*<<< orphan*/  fbdefio; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct file *file, struct dentry *dentry, int datasync)
{
	struct fb_info *info = file->private_data;

	/* Skip if deferred io is complied-in but disabled on this fbdev */
	if (!info->fbdefio)
		return 0;

	/* Kill off the delayed work */
	FUNC0(&info->deferred_work);

	/* Run it immediately */
	return FUNC1(&info->deferred_work, 0);
}