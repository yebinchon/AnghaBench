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
struct mt9p012_i2c_reg_conf {int /*<<< orphan*/  wdata; int /*<<< orphan*/  waddr; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 TYPE_1__* mt9p012_client ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC1(
	struct mt9p012_i2c_reg_conf *reg_conf_tbl, int num)
{
	int i;
	int32_t rc = -EIO;

	for (i = 0; i < num; i++) {
		rc = FUNC0(mt9p012_client->addr,
			reg_conf_tbl->waddr, reg_conf_tbl->wdata);
		if (rc < 0)
			break;
		reg_conf_tbl++;
	}

	return rc;
}