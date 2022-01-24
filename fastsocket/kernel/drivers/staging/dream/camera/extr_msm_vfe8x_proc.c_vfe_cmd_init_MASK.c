#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfe_frame_extra {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int /*<<< orphan*/  name; } ;
struct msm_vfe_callback {scalar_t__ vfe_resp; } ;
struct msm_vfe8x_ctrl {int dummy; } ;
struct TYPE_4__ {int extlen; int /*<<< orphan*/  vfebase; scalar_t__ vfeirq; void* syncdata; int /*<<< orphan*/  tasklet_q; int /*<<< orphan*/  tasklet_lock; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  ack_lock; int /*<<< orphan*/  extdata; struct msm_vfe_callback* resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfe_parse_irq ; 

int FUNC15(struct msm_vfe_callback *presp,
	struct platform_device *pdev, void *sdata)
{
	struct resource	*vfemem, *vfeirq, *vfeio;
	int rc;

	vfemem = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!vfemem) {
		FUNC0("no mem resource?\n");
		return -ENODEV;
	}

	vfeirq = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!vfeirq) {
		FUNC0("no irq resource?\n");
		return -ENODEV;
	}

	vfeio = FUNC12(vfemem->start,
		FUNC13(vfemem), pdev->name);
	if (!vfeio) {
		FUNC0("VFE region already claimed\n");
		return -EBUSY;
	}

	ctrl =
	FUNC8(sizeof(struct msm_vfe8x_ctrl), GFP_KERNEL);
	if (!ctrl) {
		rc = -ENOMEM;
		goto cmd_init_failed1;
	}

	ctrl->vfeirq  = vfeirq->start;

	ctrl->vfebase =
		FUNC4(vfemem->start, (vfemem->end - vfemem->start) + 1);
	if (!ctrl->vfebase) {
		rc = -ENOMEM;
		goto cmd_init_failed2;
	}

	rc = FUNC11(ctrl->vfeirq, vfe_parse_irq,
		IRQF_TRIGGER_RISING, "vfe", 0);
	if (rc < 0)
		goto cmd_init_failed2;

	if (presp && presp->vfe_resp)
		ctrl->resp = presp;
	else {
		rc = -EINVAL;
		goto cmd_init_failed3;
	}

	ctrl->extdata =
		FUNC7(sizeof(struct vfe_frame_extra), GFP_KERNEL);
	if (!ctrl->extdata) {
		rc = -ENOMEM;
		goto cmd_init_failed3;
	}

	FUNC14(&ctrl->ack_lock);
	FUNC14(&ctrl->state_lock);
	FUNC14(&ctrl->io_lock);

	ctrl->extlen = sizeof(struct vfe_frame_extra);

	FUNC14(&ctrl->tasklet_lock);
	FUNC1(&ctrl->tasklet_q);

	ctrl->syncdata = sdata;
	return 0;

cmd_init_failed3:
	FUNC2(ctrl->vfeirq);
	FUNC3(ctrl->vfeirq, 0);
	FUNC5(ctrl->vfebase);
cmd_init_failed2:
	FUNC6(ctrl);
cmd_init_failed1:
	FUNC10(vfemem->start, (vfemem->end - vfemem->start) + 1);
	return rc;
}