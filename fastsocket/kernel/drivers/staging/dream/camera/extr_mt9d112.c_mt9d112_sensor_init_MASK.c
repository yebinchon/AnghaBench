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
struct mt9d112_ctrl {int dummy; } ;
struct msm_camera_sensor_info {int dummy; } ;
struct TYPE_4__ {struct msm_camera_sensor_info const* sensordata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* mt9d112_ctrl ; 
 int FUNC6 (struct msm_camera_sensor_info const*) ; 

int FUNC7(const struct msm_camera_sensor_info *data)
{
	int rc = 0;

	mt9d112_ctrl = FUNC2(sizeof(struct mt9d112_ctrl), GFP_KERNEL);
	if (!mt9d112_ctrl) {
		FUNC0("mt9d112_init failed!\n");
		rc = -ENOMEM;
		goto init_done;
	}

	if (data)
		mt9d112_ctrl->sensordata = data;

	/* Input MCLK = 24MHz */
	FUNC5(24000000);
	FUNC3(5);

	FUNC4();

	rc = FUNC6(data);
	if (rc < 0) {
		FUNC0("mt9d112_sensor_init failed!\n");
		goto init_fail;
	}

init_done:
	return rc;

init_fail:
	FUNC1(mt9d112_ctrl);
	return rc;
}