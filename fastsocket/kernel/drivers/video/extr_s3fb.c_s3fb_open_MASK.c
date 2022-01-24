#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vgastate {int dummy; } ;
struct TYPE_3__ {int flags; int num_crtc; int num_seq; } ;
struct s3fb_info {scalar_t__ ref_count; int /*<<< orphan*/  open_lock; TYPE_1__ state; } ;
struct fb_info {struct s3fb_info* par; } ;

/* Variables and functions */
 int VGA_SAVE_CMAP ; 
 int VGA_SAVE_FONTS ; 
 int VGA_SAVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct s3fb_info *par = info->par;

	FUNC1(&(par->open_lock));
	if (par->ref_count == 0) {
		FUNC0(&(par->state), 0, sizeof(struct vgastate));
		par->state.flags = VGA_SAVE_MODE | VGA_SAVE_FONTS | VGA_SAVE_CMAP;
		par->state.num_crtc = 0x70;
		par->state.num_seq = 0x20;
		FUNC3(&(par->state));
	}

	par->ref_count++;
	FUNC2(&(par->open_lock));

	return 0;
}