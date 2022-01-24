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
struct mfb_info {scalar_t__ count; int /*<<< orphan*/  index; } ;
struct fb_info {struct mfb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  diu_lock ; 
 int FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct mfb_info *mfbi = info->par;
	int res = 0;

	FUNC2(&diu_lock);
	mfbi->count--;
	if (mfbi->count == 0) {
		FUNC1("release plane index %d\n", mfbi->index);
		res = FUNC0(info);
		if (res < 0)
			mfbi->count++;
	}
	FUNC3(&diu_lock);
	return res;
}