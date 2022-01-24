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
struct bfin_bf54xfb_info {int lq043_open_cnt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EPPI0 ; 
 int EPPI_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfin_bf54xfb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfin_bf54xfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info, int user)
{
	struct bfin_bf54xfb_info *fbi = info->par;

	FUNC6(&fbi->lock);
	fbi->lq043_open_cnt++;

	if (fbi->lq043_open_cnt <= 1) {

		FUNC2(0);
		FUNC0();

		FUNC3(fbi);
		FUNC4(fbi);

		/* start dma */
		FUNC5(CH_EPPI0);
		FUNC2(FUNC1() | EPPI_EN);
	}

	FUNC7(&fbi->lock);

	return 0;
}