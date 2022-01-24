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
struct msm_sync {int dummy; } ;
struct msm_queue_cmd {struct msm_ctrl_cmd* command; int /*<<< orphan*/  type; } ;
struct msm_ctrl_cmd {scalar_t__ length; int /*<<< orphan*/  value; int /*<<< orphan*/  timeout_ms; } ;
struct msm_control_device_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct msm_queue_cmd*) ; 
 int /*<<< orphan*/  MSM_CAM_Q_V4L2_REQ ; 
 int FUNC3 (struct msm_queue_cmd*) ; 
 struct msm_queue_cmd* FUNC4 (struct msm_sync*,struct msm_control_device_queue*,struct msm_queue_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_queue_cmd*) ; 
 struct msm_queue_cmd* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct msm_sync *sync,
		struct msm_ctrl_cmd *out)
{
	int rc = 0;

	struct msm_queue_cmd *qcmd = NULL, *rcmd = NULL;
	struct msm_ctrl_cmd *ctrl;
	struct msm_control_device_queue FIXME;

	/* wake up config thread, 4 is for V4L2 application */
	qcmd = FUNC6(sizeof(struct msm_queue_cmd), GFP_KERNEL);
	if (!qcmd) {
		FUNC8("msm_control: cannot allocate buffer\n");
		rc = -ENOMEM;
		goto end;
	}
	qcmd->type = MSM_CAM_Q_V4L2_REQ;
	qcmd->command = out;

	rcmd = FUNC4(sync, &FIXME, qcmd, out->timeout_ms);
	if (FUNC2(rcmd)) {
		rc = FUNC3(rcmd);
		goto end;
	}

	ctrl = (struct msm_ctrl_cmd *)(rcmd->command);
	/* FIXME: we should just set out->length = ctrl->length; */
	FUNC0(out->length < ctrl->length);
	FUNC7(out->value, ctrl->value, ctrl->length);

end:
	if (rcmd) FUNC5(rcmd);
	FUNC1("__msm_v4l2_control: end rc = %d\n", rc);
	return rc;
}