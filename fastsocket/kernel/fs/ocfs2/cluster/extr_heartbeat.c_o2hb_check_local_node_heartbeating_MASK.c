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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ML_HEARTBEAT ; 
 scalar_t__ O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(void)
{
	u8 node_num;

	/* if this node was set then we have networking */
	node_num = FUNC2();
	if (node_num == O2NM_MAX_NODES) {
		FUNC0(ML_HEARTBEAT, "this node has not been configured.\n");
		return 0;
	}

	return FUNC1(node_num);
}