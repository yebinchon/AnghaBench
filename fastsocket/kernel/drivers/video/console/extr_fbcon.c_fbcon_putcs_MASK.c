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
struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int /*<<< orphan*/  (* putcs ) (struct vc_data*,struct fb_info*,unsigned short const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct display {int dummy; } ;

/* Variables and functions */
 size_t* con2fb_map ; 
 struct display* fb_display ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,struct fb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct display*,int) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC3 (unsigned short const*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,struct fb_info*,unsigned short const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc, const unsigned short *s,
			int count, int ypos, int xpos)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct display *p = &fb_display[vc->vc_num];
	struct fbcon_ops *ops = info->fbcon_par;

	if (!FUNC0(vc, info))
		ops->putcs(vc, info, s, count, FUNC2(p, ypos), xpos,
			   FUNC1(vc, info, FUNC3(s), 1),
			   FUNC1(vc, info, FUNC3(s), 0));
}