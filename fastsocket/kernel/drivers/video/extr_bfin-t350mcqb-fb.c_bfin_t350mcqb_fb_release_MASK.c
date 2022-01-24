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
struct fb_info {struct bfin_t350mcqbfb_info* par; } ;
struct bfin_t350mcqbfb_info {scalar_t__ lq043_open_cnt; int /*<<< orphan*/  lock; scalar_t__ lq043_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_PPI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, int user)
{
	struct bfin_t350mcqbfb_info *fbi = info->par;

	FUNC4(&fbi->lock);

	fbi->lq043_open_cnt--;
	fbi->lq043_mmap = 0;

	if (fbi->lq043_open_cnt <= 0) {
		FUNC1();
		FUNC0();
		FUNC3(CH_PPI);
		FUNC2();
	}

	FUNC5(&fbi->lock);

	return 0;
}