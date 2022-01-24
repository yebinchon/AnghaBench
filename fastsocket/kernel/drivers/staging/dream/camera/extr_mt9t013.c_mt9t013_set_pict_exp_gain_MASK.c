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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9T013_REG_RESET_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* mt9t013_client ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC3(uint16_t gain, uint32_t line)
{
	int32_t rc = 0;

	rc = FUNC2(gain, line);
	if (rc < 0)
		return rc;

	rc = FUNC1(mt9t013_client->addr,
			MT9T013_REG_RESET_REGISTER,
			0x10CC | 0x0002);

	FUNC0(5);

	/* camera_timed_wait(snapshot_wait*exposure_ratio); */
	return rc;
}