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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_table ; 
 scalar_t__ sunrpc_table_header ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xs_bc_tcp_transport ; 
 int /*<<< orphan*/  xs_local_transport ; 
 int /*<<< orphan*/  xs_tcp_transport ; 
 int /*<<< orphan*/  xs_udp_transport ; 

int FUNC2(void)
{
#ifdef RPC_DEBUG
	if (!sunrpc_table_header)
		sunrpc_table_header = register_sysctl_table(sunrpc_table);
#endif

	FUNC1(&xs_local_transport);
	FUNC1(&xs_udp_transport);
	FUNC1(&xs_tcp_transport);
	FUNC1(&xs_bc_tcp_transport);

	return 0;
}