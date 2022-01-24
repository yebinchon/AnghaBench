#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vfe_cmd_black_level_config {int /*<<< orphan*/  oddOddAdjustment; int /*<<< orphan*/  oddEvenAdjustment; int /*<<< orphan*/  evenOddAdjustment; int /*<<< orphan*/  evenEvenAdjustment; int /*<<< orphan*/  enable; } ;
struct vfe_blacklevel_cfg {int /*<<< orphan*/  oddOddAdjustment; int /*<<< orphan*/  oddEvenAdjustment; int /*<<< orphan*/  evenOddAdjustment; int /*<<< orphan*/  evenEvenAdjustment; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int /*<<< orphan*/  blackLevelCorrectionEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;

/* Variables and functions */
 scalar_t__ VFE_BLACK_EVEN_EVEN_VALUE ; 
 TYPE_2__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (struct vfe_blacklevel_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct vfe_cmd_black_level_config *in)
{
	struct vfe_blacklevel_cfg cmd;
	FUNC0(&cmd, 0, sizeof(cmd));

	ctrl->vfeModuleEnableLocal.blackLevelCorrectionEnable = in->enable;

	cmd.evenEvenAdjustment = in->evenEvenAdjustment;
	cmd.evenOddAdjustment  = in->evenOddAdjustment;
	cmd.oddEvenAdjustment  = in->oddEvenAdjustment;
	cmd.oddOddAdjustment   = in->oddOddAdjustment;

	FUNC1(ctrl->vfebase + VFE_BLACK_EVEN_EVEN_VALUE,
		(uint32_t *)&cmd, sizeof(cmd));
}