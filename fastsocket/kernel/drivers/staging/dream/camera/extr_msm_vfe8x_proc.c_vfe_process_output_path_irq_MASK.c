#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfe_interrupt_status {scalar_t__ encIrq; scalar_t__ encYPingpongIrq; scalar_t__ encCbcrPingpongIrq; scalar_t__ anyOutput2PathIrqs; scalar_t__ viewIrq; scalar_t__ viewYPingpongIrq; scalar_t__ viewCbcrPingpongIrq; scalar_t__ anyOutput1PathIrqs; } ;
struct TYPE_4__ {scalar_t__ snapshotPendingCount; int /*<<< orphan*/  fragCount; int /*<<< orphan*/  yPath; int /*<<< orphan*/  cbcrPath; scalar_t__ multiFrag; } ;
struct TYPE_5__ {int /*<<< orphan*/  vstate; TYPE_1__ viewPath; TYPE_1__ encPath; scalar_t__ vfeOperationMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_MSG_ID_SNAPSHOT_DONE ; 
 int /*<<< orphan*/  VFE_STATE_IDLE ; 
 int /*<<< orphan*/  VFE_TEST_GEN_STOP ; 
 TYPE_3__* ctrl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
	struct vfe_interrupt_status *irqstatus)
{
	/* unsigned long flags; */

	/* process the view path interrupts */
	if (irqstatus->anyOutput1PathIrqs) {
		if (ctrl->viewPath.multiFrag) {

			if (irqstatus->viewCbcrPingpongIrq)
				FUNC3(
					&(ctrl->viewPath.cbcrPath),
					ctrl->viewPath.fragCount);

			if (irqstatus->viewYPingpongIrq)
				FUNC3(
					&(ctrl->viewPath.yPath),
					ctrl->viewPath.fragCount);

			if (irqstatus->viewIrq)
				FUNC1(
					&ctrl->viewPath);

		} else {
			/* typical case for no fragment,
			 only frame done irq is enabled. */
			if (irqstatus->viewIrq)
				FUNC2(
					&ctrl->viewPath);
		}
	}

	/* process the encoder path interrupts */
	if (irqstatus->anyOutput2PathIrqs) {
		if (ctrl->encPath.multiFrag) {
			if (irqstatus->encCbcrPingpongIrq)
				FUNC3(
					&(ctrl->encPath.cbcrPath),
					ctrl->encPath.fragCount);

			if (irqstatus->encYPingpongIrq)
				FUNC3(&(ctrl->encPath.yPath),
				ctrl->encPath.fragCount);

			if (irqstatus->encIrq)
				FUNC1(
					&ctrl->encPath);

		} else {
			if (irqstatus->encIrq)
				FUNC2(
					&ctrl->encPath);
		}
	}

	if (ctrl->vfeOperationMode) {
		if ((ctrl->encPath.snapshotPendingCount == 0) &&
				(ctrl->viewPath.snapshotPendingCount == 0)) {

			/* @todo This is causing issues, further investigate */
			/* spin_lock_irqsave(&ctrl->state_lock, flags); */
			ctrl->vstate = VFE_STATE_IDLE;
			/* spin_unlock_irqrestore(&ctrl->state_lock, flags); */

			FUNC5(VFE_MSG_ID_SNAPSHOT_DONE);
			FUNC4(VFE_TEST_GEN_STOP);
			FUNC0();
		}
	}
}