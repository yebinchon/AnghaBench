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
struct vc_data {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {struct vc_data* d; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FBCON_LOGO_DONTSHOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct vc_data*,struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,struct fb_info*,int,int) ; 
 int* con2fb_map ; 
 int* con2fb_map_boot ; 
 int FUNC3 (struct vc_data*,struct fb_info*,struct fb_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fb_con ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ fg_console ; 
 int info_idx ; 
 scalar_t__ logo_shown ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* vc_cons ; 

__attribute__((used)) static int FUNC10(int unit, int newidx, int user)
{
	struct vc_data *vc = vc_cons[unit].d;
	int oldidx = con2fb_map[unit];
	struct fb_info *info = registered_fb[newidx];
	struct fb_info *oldinfo = NULL;
 	int found, err = 0;

	if (oldidx == newidx)
		return 0;

	if (!info)
		return -EINVAL;

	if (!FUNC9() || !FUNC4(&fb_con)) {
		info_idx = newidx;
		return FUNC6(0);
	}

	if (oldidx != -1)
		oldinfo = registered_fb[oldidx];

	found = FUNC8(newidx);

	FUNC0();
	con2fb_map[unit] = newidx;
	if (!err && !found)
 		err = FUNC1(vc, info, unit, oldidx);


	/*
	 * If old fb is not mapped to any of the consoles,
	 * fbcon should release it.
	 */
 	if (!err && oldinfo && !FUNC8(oldidx))
 		err = FUNC3(vc, oldinfo, info, unit, oldidx,
 					     found);

 	if (!err) {
 		int show_logo = (fg_console == 0 && !user &&
 				 logo_shown != FBCON_LOGO_DONTSHOW);

 		if (!found)
 			FUNC5(info);
 		con2fb_map_boot[unit] = newidx;
 		FUNC2(vc, info, unit, show_logo);
	}

	if (!FUNC8(info_idx))
		info_idx = newidx;

	FUNC7();
 	return err;
}