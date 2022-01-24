#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {scalar_t__ curr_lens_pos; } ;

/* Variables and functions */
 TYPE_2__* s5k3e2fx_client ; 
 TYPE_1__* s5k3e2fx_ctrl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC1(void)
{
	int32_t rc = 0;

	rc = FUNC0(s5k3e2fx_client->addr,
			0x3131, 0);
	if (rc < 0)
		return rc;

	rc = FUNC0(s5k3e2fx_client->addr,
			0x3132, 0);
	if (rc < 0)
		return rc;

	s5k3e2fx_ctrl->curr_lens_pos = 0;

	return rc;
}