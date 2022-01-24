#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct msm_camera_sensor_info {int /*<<< orphan*/  sensor_reset; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int ENODEV ; 
 scalar_t__ MT9T013_MODEL_ID ; 
 int /*<<< orphan*/  MT9T013_REG_MODEL_ID ; 
 int MT9T013_REG_RESET_REGISTER ; 
 int MT9T013_RESET_DELAY_MSECS ; 
 int MT9T013_RESET_REGISTER_PWON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* mt9t013_client ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct msm_camera_sensor_info *data)
{
	int rc;
	uint16_t chipid;

	rc = FUNC3(data->sensor_reset, "mt9t013");
	if (!rc)
		FUNC1(data->sensor_reset, 1);
	else
		goto init_probe_done;

	FUNC4(20);

	/* RESET the sensor image part via I2C command */
	rc = FUNC6(mt9t013_client->addr,
		MT9T013_REG_RESET_REGISTER, 0x1009);
	if (rc < 0)
		goto init_probe_fail;

	/* 3. Read sensor Model ID: */
	rc = FUNC5(mt9t013_client->addr,
		MT9T013_REG_MODEL_ID, &chipid);

	if (rc < 0)
		goto init_probe_fail;

	FUNC0("mt9t013 model_id = 0x%x\n", chipid);

	/* 4. Compare sensor ID to MT9T012VC ID: */
	if (chipid != MT9T013_MODEL_ID) {
		rc = -ENODEV;
		goto init_probe_fail;
	}

	rc = FUNC6(mt9t013_client->addr,
		0x3064, 0x0805);
	if (rc < 0)
		goto init_probe_fail;

	FUNC4(MT9T013_RESET_DELAY_MSECS);

	goto init_probe_done;

	/* sensor: output enable */
#if 0
	rc = mt9t013_i2c_write_w(mt9t013_client->addr,
		MT9T013_REG_RESET_REGISTER,
		MT9T013_RESET_REGISTER_PWON);

	/* if this fails, the sensor is not the MT9T013 */
	rc = mt9t013_set_default_focus(0);
#endif

init_probe_fail:
	FUNC1(data->sensor_reset, 0);
	FUNC2(data->sensor_reset);
init_probe_done:
	return rc;
}