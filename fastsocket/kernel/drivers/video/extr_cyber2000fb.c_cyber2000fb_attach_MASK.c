#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cyberpro_info {int /*<<< orphan*/  dev_name; TYPE_3__* info; int /*<<< orphan*/  disable_extregs; int /*<<< orphan*/  enable_extregs; int /*<<< orphan*/  fb_size; int /*<<< orphan*/  fb; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  smem_len; } ;
struct TYPE_5__ {TYPE_1__ fix; int /*<<< orphan*/  screen_base; } ;
struct TYPE_6__ {TYPE_2__ fb; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cyber2000fb_disable_extregs ; 
 int /*<<< orphan*/  cyber2000fb_enable_extregs ; 
 TYPE_3__* int_cfb_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct cyberpro_info *info, int idx)
{
	if (int_cfb_info != NULL) {
		info->dev	      = int_cfb_info->dev;
		info->regs	      = int_cfb_info->regs;
		info->fb	      = int_cfb_info->fb.screen_base;
		info->fb_size	      = int_cfb_info->fb.fix.smem_len;
		info->enable_extregs  = cyber2000fb_enable_extregs;
		info->disable_extregs = cyber2000fb_disable_extregs;
		info->info	      = int_cfb_info;

		FUNC0(info->dev_name, int_cfb_info->fb.fix.id,
			sizeof(info->dev_name));
	}

	return int_cfb_info != NULL;
}