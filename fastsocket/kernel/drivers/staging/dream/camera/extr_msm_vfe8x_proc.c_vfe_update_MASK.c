#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* statsPingpongReload; } ;
struct TYPE_5__ {int statsEnable; } ;
struct TYPE_7__ {int autoFocusEnable; int axwEnable; } ;
struct TYPE_8__ {TYPE_2__ vfeBusCmdLocal; void* vfeStatsPingPongReloadFlag; TYPE_1__ vfeModuleEnableLocal; int /*<<< orphan*/  vfeImaskPacked; int /*<<< orphan*/  vfeImaskLocal; TYPE_3__ vfeStatsCmdLocal; } ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  VFE_REG_UPDATE_TRIGGER ; 
 TYPE_4__* ctrl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(void)
{
	ctrl->vfeModuleEnableLocal.statsEnable =
		ctrl->vfeStatsCmdLocal.autoFocusEnable |
		ctrl->vfeStatsCmdLocal.axwEnable;

	FUNC5(&ctrl->vfeModuleEnableLocal);

	FUNC3(&ctrl->vfeStatsCmdLocal);

	ctrl->vfeImaskPacked = FUNC0(ctrl->vfeImaskLocal);
	FUNC1(ctrl->vfeImaskPacked);

	if ((ctrl->vfeModuleEnableLocal.statsEnable == TRUE) &&
			(ctrl->vfeStatsPingPongReloadFlag == FALSE)) {
		ctrl->vfeStatsPingPongReloadFlag = TRUE;

		ctrl->vfeBusCmdLocal.statsPingpongReload = TRUE;
		FUNC4(&ctrl->vfeBusCmdLocal);
	}

	FUNC2(VFE_REG_UPDATE_TRIGGER);
}