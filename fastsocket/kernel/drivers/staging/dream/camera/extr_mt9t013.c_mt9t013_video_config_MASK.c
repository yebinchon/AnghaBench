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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int prev_res; int curr_res; int sensormode; int /*<<< orphan*/  my_reg_line_count; int /*<<< orphan*/  my_reg_gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EINVAL ; 
#define  FULL_SIZE 129 
#define  QTR_SIZE 128 
 int /*<<< orphan*/  RES_CAPTURE ; 
 int /*<<< orphan*/  RES_PREVIEW ; 
 int /*<<< orphan*/  UPDATE_PERIODIC ; 
 TYPE_1__* mt9t013_ctrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC3(int mode, int res)
{
	int32_t rc;

	switch (res) {
	case QTR_SIZE:
		rc = FUNC1(UPDATE_PERIODIC, RES_PREVIEW);
		if (rc < 0)
			return rc;
		FUNC0("sensor configuration done!\n");
		break;

	case FULL_SIZE:
		rc = FUNC1(UPDATE_PERIODIC, RES_CAPTURE);
		if (rc < 0)
			return rc;
		break;

	default:
		return -EINVAL;
	} /* switch */

	mt9t013_ctrl->prev_res = res;
	mt9t013_ctrl->curr_res = res;
	mt9t013_ctrl->sensormode = mode;

	return FUNC2(mt9t013_ctrl->my_reg_gain,
			mt9t013_ctrl->my_reg_line_count);
}