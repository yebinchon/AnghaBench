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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifmib_reg ; 
 int /*<<< orphan*/  ipForward_reg ; 
 int /*<<< orphan*/  ipmib_reg ; 
 int /*<<< orphan*/ * mibII_poll_timer ; 
 int mib_netsock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int route ; 
 int /*<<< orphan*/ * route_fd ; 
 int /*<<< orphan*/  tcpmib_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udpmib_reg ; 

__attribute__((used)) static int
FUNC4(void)
{
	if (mibII_poll_timer != NULL ) {
		FUNC3(mibII_poll_timer);
		mibII_poll_timer = NULL;
	}

	if (route_fd != NULL)
		FUNC1(route_fd);
	if (route != -1)
		(void)FUNC0(route);
	if (mib_netsock != -1)
		(void)FUNC0(mib_netsock);
	/* XXX free memory */

	FUNC2(ipForward_reg);
	FUNC2(udpmib_reg);
	FUNC2(tcpmib_reg);
	FUNC2(ipmib_reg);
	FUNC2(ifmib_reg);

	return (0);
}