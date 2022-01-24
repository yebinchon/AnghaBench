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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MIBII_POLL_TICKS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* ifmib_reg ; 
 void* ipForward_reg ; 
 void* ipmib_reg ; 
 int /*<<< orphan*/  mibII_poll_ticks ; 
 int /*<<< orphan*/ * mibII_poll_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ mib_ifstack_last_change ; 
 scalar_t__ mib_iftable_last_change ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  module ; 
 int /*<<< orphan*/  oid_ifMIB ; 
 int /*<<< orphan*/  oid_ipForward ; 
 int /*<<< orphan*/  oid_ipMIB ; 
 int /*<<< orphan*/  oid_tcpMIB ; 
 int /*<<< orphan*/  oid_udpMIB ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  route ; 
 int /*<<< orphan*/ * route_fd ; 
 int /*<<< orphan*/  route_input ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* tcpmib_reg ; 
 void* udpmib_reg ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
{
	if ((route_fd = FUNC0(route, route_input, NULL, module)) == NULL) {
		FUNC6(LOG_ERR, "fd_select(route): %m");
		return;
	}
	FUNC3();
	FUNC7();
	FUNC1();
	(void)FUNC2();
	mib_iftable_last_change = 0;
	mib_ifstack_last_change = 0;

	ifmib_reg = FUNC5(&oid_ifMIB,
	    "The MIB module to describe generic objects for network interface"
	    " sub-layers.", module);

	ipmib_reg = FUNC5(&oid_ipMIB,
	   "The MIB module for managing IP and ICMP implementations, but "
	   "excluding their management of IP routes.", module);

	tcpmib_reg = FUNC5(&oid_tcpMIB,
	   "The MIB module for managing TCP implementations.", module);

	udpmib_reg = FUNC5(&oid_udpMIB,
	   "The MIB module for managing UDP implementations.", module);

	ipForward_reg = FUNC5(&oid_ipForward,
	   "The MIB module for the display of CIDR multipath IP Routes.",
	   module);

	mibII_poll_timer = NULL;
	mibII_poll_ticks = MIBII_POLL_TICKS;
	FUNC4();
}