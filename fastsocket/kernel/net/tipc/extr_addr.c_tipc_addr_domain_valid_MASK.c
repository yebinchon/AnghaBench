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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ LOWEST_SLAVE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ tipc_max_clusters ; 
 scalar_t__ tipc_max_nodes ; 
 scalar_t__ tipc_max_slaves ; 
 scalar_t__ tipc_max_zones ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int FUNC4(u32 addr)
{
	u32 n = FUNC2(addr);
	u32 c = FUNC1(addr);
	u32 z = FUNC3(addr);
	u32 max_nodes = tipc_max_nodes;

	if (FUNC0(addr))
		max_nodes = LOWEST_SLAVE + tipc_max_slaves;
	if (n > max_nodes)
		return 0;
	if (c > tipc_max_clusters)
		return 0;
	if (z > tipc_max_zones)
		return 0;

	if (n && (!z || !c))
		return 0;
	if (c && !z)
		return 0;
	return 1;
}