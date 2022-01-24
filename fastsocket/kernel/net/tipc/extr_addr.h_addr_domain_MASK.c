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
 int TIPC_CLUSTER_SCOPE ; 
 int TIPC_NODE_SCOPE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int tipc_own_addr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(int sc)
{
	if (FUNC0(sc == TIPC_NODE_SCOPE))
		return tipc_own_addr;
	if (sc == TIPC_CLUSTER_SCOPE)
		return FUNC1(FUNC3(tipc_own_addr),
				 FUNC2(tipc_own_addr), 0);
	return FUNC1(FUNC3(tipc_own_addr), 0, 0);
}