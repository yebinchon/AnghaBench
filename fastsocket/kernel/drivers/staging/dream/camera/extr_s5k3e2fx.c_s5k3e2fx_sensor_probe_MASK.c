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
struct msm_sensor_ctrl {int /*<<< orphan*/  s_config; int /*<<< orphan*/  s_release; int /*<<< orphan*/  s_init; } ;
struct msm_camera_sensor_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOTSUPP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * s5k3e2fx_client ; 
 int /*<<< orphan*/  s5k3e2fx_i2c_driver ; 
 int /*<<< orphan*/  FUNC4 (struct msm_camera_sensor_info const*) ; 
 int FUNC5 (struct msm_camera_sensor_info const*) ; 
 int /*<<< orphan*/  s5k3e2fx_sensor_config ; 
 int /*<<< orphan*/  s5k3e2fx_sensor_open_init ; 
 int /*<<< orphan*/  s5k3e2fx_sensor_release ; 

__attribute__((used)) static int FUNC6(const struct msm_camera_sensor_info *info,
		struct msm_sensor_ctrl *s)
{
	int rc = 0;

	rc = FUNC1(&s5k3e2fx_i2c_driver);
	if (rc < 0 || s5k3e2fx_client == NULL) {
		rc = -ENOTSUPP;
		goto probe_fail;
	}

	FUNC3(24000000);
	FUNC2(20);

	rc = FUNC5(info);
	if (rc < 0)
		goto probe_fail;

	s->s_init = s5k3e2fx_sensor_open_init;
	s->s_release = s5k3e2fx_sensor_release;
	s->s_config  = s5k3e2fx_sensor_config;
	FUNC4(info);

	return rc;

probe_fail:
	FUNC0("SENSOR PROBE FAILS!\n");
	return rc;
}