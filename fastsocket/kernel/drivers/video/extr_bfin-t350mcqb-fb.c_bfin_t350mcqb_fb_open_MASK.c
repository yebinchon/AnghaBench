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
struct bfin_t350mcqbfb_info {int lq043_open_cnt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_PPI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bfin_t350mcqbfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfin_t350mcqbfb_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct fb_info *info, int user)
{
	struct bfin_t350mcqbfb_info *fbi = info->par;

	FUNC8(&fbi->lock);
	fbi->lq043_open_cnt++;

	if (fbi->lq043_open_cnt <= 1) {

		FUNC3();
		FUNC0();

		FUNC1(fbi);
		FUNC2(fbi);
		FUNC5();

		/* start dma */
		FUNC7(CH_PPI);
		FUNC4();
		FUNC6();
	}

	FUNC9(&fbi->lock);

	return 0;
}