#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  en; } ;
struct TYPE_4__ {int mode; } ;
union cvmx_gmxx_inf_mode {TYPE_2__ s; TYPE_1__ cn56xx; int /*<<< orphan*/  u64; } ;
typedef  int /*<<< orphan*/  cvmx_helper_interface_mode_t ;
struct TYPE_6__ {scalar_t__ board_type; int board_rev_major; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_CN3005_EVB_HS5 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_DISABLED ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_GMII ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_LOOP ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_NPI ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_PICMG ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int /*<<< orphan*/  CVMX_HELPER_INTERFACE_MODE_XAUI ; 
 int /*<<< orphan*/  OCTEON_CN30XX ; 
 int /*<<< orphan*/  OCTEON_CN31XX ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 

cvmx_helper_interface_mode_t FUNC4(int interface)
{
	union cvmx_gmxx_inf_mode mode;
	if (interface == 2)
		return CVMX_HELPER_INTERFACE_MODE_NPI;

	if (interface == 3) {
		if (FUNC1(OCTEON_CN56XX)
		    || FUNC1(OCTEON_CN52XX))
			return CVMX_HELPER_INTERFACE_MODE_LOOP;
		else
			return CVMX_HELPER_INTERFACE_MODE_DISABLED;
	}

	if (interface == 0
	    && FUNC3()->board_type == CVMX_BOARD_TYPE_CN3005_EVB_HS5
	    && FUNC3()->board_rev_major == 1) {
		/*
		 * Lie about interface type of CN3005 board.  This
		 * board has a switch on port 1 like the other
		 * evaluation boards, but it is connected over RGMII
		 * instead of GMII.  Report GMII mode so that the
		 * speed is forced to 1 Gbit full duplex.  Other than
		 * some initial configuration (which does not use the
		 * output of this function) there is no difference in
		 * setup between GMII and RGMII modes.
		 */
		return CVMX_HELPER_INTERFACE_MODE_GMII;
	}

	/* Interface 1 is always disabled on CN31XX and CN30XX */
	if ((interface == 1)
	    && (FUNC1(OCTEON_CN31XX) || FUNC1(OCTEON_CN30XX)
		|| FUNC1(OCTEON_CN50XX)
		|| FUNC1(OCTEON_CN52XX)))
		return CVMX_HELPER_INTERFACE_MODE_DISABLED;

	mode.u64 = FUNC2(FUNC0(interface));

	if (FUNC1(OCTEON_CN56XX) || FUNC1(OCTEON_CN52XX)) {
		switch (mode.cn56xx.mode) {
		case 0:
			return CVMX_HELPER_INTERFACE_MODE_DISABLED;
		case 1:
			return CVMX_HELPER_INTERFACE_MODE_XAUI;
		case 2:
			return CVMX_HELPER_INTERFACE_MODE_SGMII;
		case 3:
			return CVMX_HELPER_INTERFACE_MODE_PICMG;
		default:
			return CVMX_HELPER_INTERFACE_MODE_DISABLED;
		}
	} else {
		if (!mode.s.en)
			return CVMX_HELPER_INTERFACE_MODE_DISABLED;

		if (mode.s.type) {
			if (FUNC1(OCTEON_CN38XX)
			    || FUNC1(OCTEON_CN58XX))
				return CVMX_HELPER_INTERFACE_MODE_SPI;
			else
				return CVMX_HELPER_INTERFACE_MODE_GMII;
		} else
			return CVMX_HELPER_INTERFACE_MODE_RGMII;
	}
}