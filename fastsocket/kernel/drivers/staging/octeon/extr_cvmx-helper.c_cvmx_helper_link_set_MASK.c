#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_1__ cvmx_helper_link_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  u64; } ;

/* Variables and functions */
#define  CVMX_HELPER_INTERFACE_MODE_DISABLED 137 
#define  CVMX_HELPER_INTERFACE_MODE_GMII 136 
#define  CVMX_HELPER_INTERFACE_MODE_LOOP 135 
#define  CVMX_HELPER_INTERFACE_MODE_NPI 134 
#define  CVMX_HELPER_INTERFACE_MODE_PCIE 133 
#define  CVMX_HELPER_INTERFACE_MODE_PICMG 132 
#define  CVMX_HELPER_INTERFACE_MODE_RGMII 131 
#define  CVMX_HELPER_INTERFACE_MODE_SGMII 130 
#define  CVMX_HELPER_INTERFACE_MODE_SPI 129 
#define  CVMX_HELPER_INTERFACE_MODE_XAUI 128 
 int FUNC0 (int,TYPE_1__) ; 
 int FUNC1 (int,TYPE_1__) ; 
 int FUNC2 (int,TYPE_1__) ; 
 int FUNC3 (int,TYPE_1__) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 TYPE_2__* port_link_info ; 

int FUNC8(int ipd_port, cvmx_helper_link_info_t link_info)
{
	int result = -1;
	int interface = FUNC5(ipd_port);
	int index = FUNC4(ipd_port);

	if (index >= FUNC7(interface))
		return -1;

	switch (FUNC6(interface)) {
	case CVMX_HELPER_INTERFACE_MODE_DISABLED:
	case CVMX_HELPER_INTERFACE_MODE_PCIE:
		break;
	case CVMX_HELPER_INTERFACE_MODE_XAUI:
		result = FUNC3(ipd_port, link_info);
		break;
		/*
		 * RGMII/GMII/MII are all treated about the same. Most
		 * functions refer to these ports as RGMII.
		 */
	case CVMX_HELPER_INTERFACE_MODE_RGMII:
	case CVMX_HELPER_INTERFACE_MODE_GMII:
		result = FUNC0(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_SPI:
		result = FUNC2(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_SGMII:
	case CVMX_HELPER_INTERFACE_MODE_PICMG:
		result = FUNC1(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_NPI:
	case CVMX_HELPER_INTERFACE_MODE_LOOP:
		break;
	}
	/* Set the port_link_info here so that the link status is updated
	   no matter how cvmx_helper_link_set is called. We don't change
	   the value if link_set failed */
	if (result == 0)
		port_link_info[ipd_port].u64 = link_info.u64;
	return result;
}