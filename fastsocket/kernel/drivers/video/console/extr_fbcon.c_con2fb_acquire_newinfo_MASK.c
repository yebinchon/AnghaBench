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
struct fbcon_ops {int dummy; } ;
struct fb_info {TYPE_1__* fbops; struct fbcon_ops* fbcon_par; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; scalar_t__ (* fb_open ) (struct fb_info*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int* con2fb_map ; 
 struct fbcon_ops* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,struct fb_info*) ; 
 scalar_t__ FUNC3 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vc_data *vc, struct fb_info *info,
				  int unit, int oldidx)
{
	struct fbcon_ops *ops = NULL;
	int err = 0;

	if (!FUNC4(info->fbops->owner))
		err = -ENODEV;

	if (!err && info->fbops->fb_open &&
	    info->fbops->fb_open(info, 0))
		err = -ENODEV;

	if (!err) {
		ops = FUNC0(sizeof(struct fbcon_ops), GFP_KERNEL);
		if (!ops)
			err = -ENOMEM;
	}

	if (!err) {
		info->fbcon_par = ops;

		if (vc)
			FUNC2(vc, info);
	}

	if (err) {
		con2fb_map[unit] = oldidx;
		FUNC1(info->fbops->owner);
	}

	return err;
}