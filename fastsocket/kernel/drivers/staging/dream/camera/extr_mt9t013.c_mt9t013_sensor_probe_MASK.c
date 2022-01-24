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
 int ENOTSUPP ; 
 int /*<<< orphan*/  MT9T013_DEFAULT_CLOCK_RATE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mt9t013_client ; 
 int /*<<< orphan*/  mt9t013_i2c_driver ; 
 int FUNC4 (struct msm_camera_sensor_info const*) ; 
 int /*<<< orphan*/  mt9t013_sensor_config ; 
 int /*<<< orphan*/  FUNC5 (struct msm_camera_sensor_info const*) ; 
 int /*<<< orphan*/  mt9t013_sensor_open_init ; 
 int /*<<< orphan*/  mt9t013_sensor_release ; 

__attribute__((used)) static int FUNC6(
		const struct msm_camera_sensor_info *info,
		struct msm_sensor_ctrl *s)
{
	/* We expect this driver to match with the i2c device registered
	 * in the board file immediately. */
	int rc = FUNC0(&mt9t013_i2c_driver);
	if (rc < 0 || mt9t013_client == NULL) {
		rc = -ENOTSUPP;
		goto probe_done;
	}

	/* enable mclk first */
	FUNC3(MT9T013_DEFAULT_CLOCK_RATE);
	FUNC2(20);

	rc = FUNC4(info);
	if (rc < 0) {
		FUNC1(&mt9t013_i2c_driver);
		goto probe_done;
	}

	s->s_init = mt9t013_sensor_open_init;
	s->s_release = mt9t013_sensor_release;
	s->s_config  = mt9t013_sensor_config;
	FUNC5(info);

probe_done:
	return rc;
}