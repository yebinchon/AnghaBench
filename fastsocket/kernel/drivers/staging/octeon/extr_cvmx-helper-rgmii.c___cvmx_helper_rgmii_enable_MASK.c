#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int pre_free; } ;
union cvmx_gmxx_rxx_frm_ctl {int u64; TYPE_4__ s; } ;
struct TYPE_10__ {int en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_5__ s; } ;
struct TYPE_6__ {scalar_t__ en; int type; } ;
union cvmx_gmxx_inf_mode {TYPE_1__ s; void* u64; } ;
struct TYPE_7__ {void* prt_en; } ;
union cvmx_asxx_tx_prt_en {int u64; TYPE_2__ s; } ;
struct TYPE_8__ {void* prt_en; } ;
union cvmx_asxx_rx_prt_en {int u64; TYPE_3__ s; } ;
struct cvmx_sysinfo {int /*<<< orphan*/  cpu_clock_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 () ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 struct cvmx_sysinfo* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 

int FUNC22(int interface)
{
	int num_ports = FUNC17(interface);
	int port;
	struct cvmx_sysinfo *sys_info_ptr = FUNC20();
	union cvmx_gmxx_inf_mode mode;
	union cvmx_asxx_tx_prt_en asx_tx;
	union cvmx_asxx_rx_prt_en asx_rx;

	mode.u64 = FUNC19(FUNC4(interface));

	if (mode.s.en == 0)
		return -1;
	if ((FUNC9(OCTEON_CN38XX) ||
	     FUNC9(OCTEON_CN58XX)) && mode.s.type == 1)
		/* Ignore SPI interfaces */
		return -1;

	/* Configure the ASX registers needed to use the RGMII ports */
	asx_tx.u64 = 0;
	asx_tx.s.prt_en = FUNC14(num_ports);
	FUNC21(FUNC3(interface), asx_tx.u64);

	asx_rx.u64 = 0;
	asx_rx.s.prt_en = FUNC14(num_ports);
	FUNC21(FUNC1(interface), asx_rx.u64);

	/* Configure the GMX registers needed to use the RGMII ports */
	for (port = 0; port < num_ports; port++) {
		/* Setting of CVMX_GMXX_TXX_THRESH has been moved to
		   __cvmx_helper_setup_gmx() */

		if (FUNC18())
			FUNC10(interface, port,
						       sys_info_ptr->
						       cpu_clock_hz);
		else {
			/*
			 * Configure more flexible RGMII preamble
			 * checking. Pass 1 doesn't support this
			 * feature.
			 */
			union cvmx_gmxx_rxx_frm_ctl frm_ctl;
			frm_ctl.u64 =
			    FUNC19(FUNC6
					  (port, interface));
			/* New field, so must be compile time */
			frm_ctl.s.pre_free = 1;
			FUNC21(FUNC6(port, interface),
				       frm_ctl.u64);
		}

		/*
		 * Each pause frame transmitted will ask for about 10M
		 * bit times before resume.  If buffer space comes
		 * available before that time has expired, an XON
		 * pause frame (0 time) will be transmitted to restart
		 * the flow.
		 */
		FUNC21(FUNC8(port, interface),
			       20000);
		FUNC21(FUNC7
			       (port, interface), 19000);

		if (FUNC9(OCTEON_CN50XX)) {
			FUNC21(FUNC2(port, interface),
				       16);
			FUNC21(FUNC0(port, interface),
				       16);
		} else {
			FUNC21(FUNC2(port, interface),
				       24);
			FUNC21(FUNC0(port, interface),
				       24);
		}
	}

	FUNC11(interface, num_ports);

	/* enable the ports now */
	for (port = 0; port < num_ports; port++) {
		union cvmx_gmxx_prtx_cfg gmx_cfg;
		FUNC16(FUNC15
					  (interface, port));
		gmx_cfg.u64 =
		    FUNC19(FUNC5(port, interface));
		gmx_cfg.s.en = 1;
		FUNC21(FUNC5(port, interface),
			       gmx_cfg.u64);
	}
	FUNC12(interface);
	FUNC13(interface);

	return 0;
}