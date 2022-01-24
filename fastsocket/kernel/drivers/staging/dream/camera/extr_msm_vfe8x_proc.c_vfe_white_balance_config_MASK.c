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
struct vfe_wb_cfg {int /*<<< orphan*/  ch2Gain; int /*<<< orphan*/  ch1Gain; int /*<<< orphan*/  ch0Gain; } ;
struct vfe_cmd_white_balance_config {int /*<<< orphan*/  ch2Gain; int /*<<< orphan*/  ch1Gain; int /*<<< orphan*/  ch0Gain; int /*<<< orphan*/  enable; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int /*<<< orphan*/  whiteBalanceEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;

/* Variables and functions */
 scalar_t__ VFE_WB_CFG ; 
 TYPE_2__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (struct vfe_wb_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct vfe_cmd_white_balance_config *in)
{
	struct vfe_wb_cfg cmd;
	FUNC0(&cmd, 0, sizeof(cmd));

	ctrl->vfeModuleEnableLocal.whiteBalanceEnable =
		in->enable;

	cmd.ch0Gain = in->ch0Gain;
	cmd.ch1Gain = in->ch1Gain;
	cmd.ch2Gain = in->ch2Gain;

	FUNC1(ctrl->vfebase + VFE_WB_CFG,
		(uint32_t *)&cmd, sizeof(cmd));
}