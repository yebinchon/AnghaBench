#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct s5k3e2fx_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int dummy; } ;
typedef  int int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int fps_divider; int pict_fps_divider; scalar_t__ prev_res; struct msm_camera_sensor_info const* sensordata; int /*<<< orphan*/  pict_res; int /*<<< orphan*/  set_test; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_FULL_SIZE ; 
 scalar_t__ S_QTR_SIZE ; 
 int /*<<< orphan*/  S_REG_INIT ; 
 int /*<<< orphan*/  S_RES_CAPTURE ; 
 int /*<<< orphan*/  S_RES_PREVIEW ; 
 int /*<<< orphan*/  S_TEST_OFF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_2__* s5k3e2fx_client ; 
 TYPE_1__* s5k3e2fx_ctrl ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_camera_sensor_info const*) ; 
 int FUNC8 (struct msm_camera_sensor_info const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const struct msm_camera_sensor_info *data)
{
	int32_t  rc;

	s5k3e2fx_ctrl = FUNC2(sizeof(struct s5k3e2fx_ctrl), GFP_KERNEL);
	if (!s5k3e2fx_ctrl) {
		FUNC0("s5k3e2fx_init failed!\n");
		rc = -ENOMEM;
		goto init_done;
	}

	s5k3e2fx_ctrl->fps_divider = 1 * 0x00000400;
	s5k3e2fx_ctrl->pict_fps_divider = 1 * 0x00000400;
	s5k3e2fx_ctrl->set_test = S_TEST_OFF;
	s5k3e2fx_ctrl->prev_res = S_QTR_SIZE;
	s5k3e2fx_ctrl->pict_res = S_FULL_SIZE;

	if (data)
		s5k3e2fx_ctrl->sensordata = data;

	/* enable mclk first */
	FUNC5(24000000);
	FUNC3(20);

	FUNC4();
	FUNC3(20);

	rc = FUNC8(data);
	if (rc < 0)
		goto init_fail1;

	if (s5k3e2fx_ctrl->prev_res == S_QTR_SIZE)
		rc = FUNC9(S_REG_INIT, S_RES_PREVIEW);
	else
		rc = FUNC9(S_REG_INIT, S_RES_CAPTURE);

	if (rc < 0) {
		FUNC0("s5k3e2fx_setting failed. rc = %d\n", rc);
		goto init_fail1;
	}

	/* initialize AF */
	if ((rc = FUNC6(s5k3e2fx_client->addr,
			0x3146, 0x3A)) < 0)
		goto init_fail1;

	if ((rc = FUNC6(s5k3e2fx_client->addr,
			0x3130, 0x03)) < 0)
		goto init_fail1;

	goto init_done;

init_fail1:
	FUNC7(data);
	FUNC1(s5k3e2fx_ctrl);
init_done:
	return rc;
}