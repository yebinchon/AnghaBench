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
struct fb_info {struct bfin_bf54xfb_info* par; } ;
struct bfin_bf54xfb_info {scalar_t__ lq043_open_cnt; int /*<<< orphan*/  lock; scalar_t__ lq043_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EPPI0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info, int user)
{
	struct bfin_bf54xfb_info *fbi = info->par;

	FUNC3(&fbi->lock);

	fbi->lq043_open_cnt--;
	fbi->lq043_mmap = 0;

	if (fbi->lq043_open_cnt <= 0) {

		FUNC1(0);
		FUNC0();
		FUNC2(CH_EPPI0);
	}

	FUNC4(&fbi->lock);

	return 0;
}