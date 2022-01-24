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
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 

int FUNC7(int ipd_port, int enable_internal,
				   int enable_external)
{
	int result = -1;
	int interface = FUNC4(ipd_port);
	int index = FUNC3(ipd_port);

	if (index >= FUNC6(interface))
		return -1;

	switch (FUNC5(interface)) {
	case CVMX_HELPER_INTERFACE_MODE_DISABLED:
	case CVMX_HELPER_INTERFACE_MODE_PCIE:
	case CVMX_HELPER_INTERFACE_MODE_SPI:
	case CVMX_HELPER_INTERFACE_MODE_NPI:
	case CVMX_HELPER_INTERFACE_MODE_LOOP:
		break;
	case CVMX_HELPER_INTERFACE_MODE_XAUI:
		result =
		    FUNC2(ipd_port,
							  enable_internal,
							  enable_external);
		break;
	case CVMX_HELPER_INTERFACE_MODE_RGMII:
	case CVMX_HELPER_INTERFACE_MODE_GMII:
		result =
		    FUNC0(ipd_port,
							   enable_internal,
							   enable_external);
		break;
	case CVMX_HELPER_INTERFACE_MODE_SGMII:
	case CVMX_HELPER_INTERFACE_MODE_PICMG:
		result =
		    FUNC1(ipd_port,
							   enable_internal,
							   enable_external);
		break;
	}
	return result;
}