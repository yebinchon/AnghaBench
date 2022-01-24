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
struct mt9t013_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int dummy; } ;
typedef  int int32_t ;
struct TYPE_4__ {int fps_divider; int pict_fps_divider; scalar_t__ prev_res; struct msm_camera_sensor_info const* sensordata; int /*<<< orphan*/  pict_res; int /*<<< orphan*/  set_test; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FULL_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MT9T013_DEFAULT_CLOCK_RATE ; 
 scalar_t__ QTR_SIZE ; 
 int /*<<< orphan*/  REG_INIT ; 
 int /*<<< orphan*/  RES_CAPTURE ; 
 int /*<<< orphan*/  RES_PREVIEW ; 
 int /*<<< orphan*/  TEST_OFF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mt9t013_ctrl ; 
 int FUNC5 () ; 
 int FUNC6 (struct msm_camera_sensor_info const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(const struct msm_camera_sensor_info *data)
{
	int32_t  rc;

	mt9t013_ctrl = FUNC1(sizeof(struct mt9t013_ctrl), GFP_KERNEL);
	if (!mt9t013_ctrl) {
		FUNC8("mt9t013_init failed!\n");
		rc = -ENOMEM;
		goto init_done;
	}

	mt9t013_ctrl->fps_divider = 1 * 0x00000400;
	mt9t013_ctrl->pict_fps_divider = 1 * 0x00000400;
	mt9t013_ctrl->set_test = TEST_OFF;
	mt9t013_ctrl->prev_res = QTR_SIZE;
	mt9t013_ctrl->pict_res = FULL_SIZE;

	if (data)
		mt9t013_ctrl->sensordata = data;

	/* enable mclk first */
	FUNC4(MT9T013_DEFAULT_CLOCK_RATE);
	FUNC2(20);

	FUNC3();
	FUNC2(20);

	rc = FUNC6(data);
	if (rc < 0)
		goto init_fail;

	if (mt9t013_ctrl->prev_res == QTR_SIZE)
		rc = FUNC7(REG_INIT, RES_PREVIEW);
	else
		rc = FUNC7(REG_INIT, RES_CAPTURE);

	if (rc >= 0)
		rc = FUNC5();

	if (rc < 0)
		goto init_fail;
	else
		goto init_done;

init_fail:
	FUNC0(mt9t013_ctrl);
init_done:
	return rc;
}