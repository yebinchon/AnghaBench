#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ u64; } ;
typedef  TYPE_1__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 TYPE_1__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__) ; 
 int FUNC4 (int) ; 
 TYPE_1__* port_link_info ; 

cvmx_helper_link_info_t FUNC5(int ipd_port)
{
	cvmx_helper_link_info_t link_info;
	int interface = FUNC1(ipd_port);
	int index = FUNC0(ipd_port);

	if (index >= FUNC4(interface)) {
		link_info.u64 = 0;
		return link_info;
	}

	link_info = FUNC2(ipd_port);
	if (link_info.u64 == port_link_info[ipd_port].u64)
		return link_info;

	/* If we fail to set the link speed, port_link_info will not change */
	FUNC3(ipd_port, link_info);

	/*
	 * port_link_info should be the current value, which will be
	 * different than expect if cvmx_helper_link_set() failed.
	 */
	return port_link_info[ipd_port];
}