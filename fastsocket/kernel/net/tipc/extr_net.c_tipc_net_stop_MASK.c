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

/* Variables and functions */
 scalar_t__ TIPC_NET_MODE ; 
 scalar_t__ TIPC_NODE_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ tipc_mode ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	if (tipc_mode != TIPC_NET_MODE)
		return;
	FUNC4(&tipc_net_lock);
	FUNC3();
	tipc_mode = TIPC_NODE_MODE;
	FUNC2();
	FUNC1();
	FUNC5(&tipc_net_lock);
	FUNC0("Left network mode \n");
}