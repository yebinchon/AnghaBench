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
struct mfb_info {int count; int /*<<< orphan*/  index; } ;
struct fb_info {int /*<<< orphan*/  var; struct mfb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  diu_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int FUNC1 (struct fb_info*) ; 
 int FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, int user)
{
	struct mfb_info *mfbi = info->par;
	int res = 0;

	FUNC4(&diu_lock);
	mfbi->count++;
	if (mfbi->count == 1) {
		FUNC3("open plane index %d\n", mfbi->index);
		FUNC0(&info->var, info);
		res = FUNC2(info);
		if (res < 0)
			mfbi->count--;
		else {
			res = FUNC1(info);
			if (res < 0)
				mfbi->count--;
		}
	}

	FUNC5(&diu_lock);
	return res;
}