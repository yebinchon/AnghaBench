#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int en; } ;
union cvmx_smix_en {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {scalar_t__ rfb_arb_mode; scalar_t__ lrf_arb_mode; } ;
union cvmx_l2c_cfg {void* u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX_PASS1_0 ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 

int FUNC18(void)
{
	int result = 0;
	int interface;
	union cvmx_l2c_cfg l2c_cfg;
	union cvmx_smix_en smix_en;
	const int num_interfaces = FUNC9();

	/*
	 * CN52XX pass 1: Due to a bug in 2nd order CDR, it needs to
	 * be disabled.
	 */
	if (FUNC1(OCTEON_CN52XX_PASS1_0))
		FUNC2(1);

	/*
	 * Tell L2 to give the IOB statically higher priority compared
	 * to the cores. This avoids conditions where IO blocks might
	 * be starved under very high L2 loads.
	 */
	l2c_cfg.u64 = FUNC16(CVMX_L2C_CFG);
	l2c_cfg.s.lrf_arb_mode = 0;
	l2c_cfg.s.rfb_arb_mode = 0;
	FUNC17(CVMX_L2C_CFG, l2c_cfg.u64);

	/* Make sure SMI/MDIO is enabled so we can query PHYs */
	smix_en.u64 = FUNC16(FUNC0(0));
	if (!smix_en.s.en) {
		smix_en.s.en = 1;
		FUNC17(FUNC0(0), smix_en.u64);
	}

	/* Newer chips actually have two SMI/MDIO interfaces */
	if (!FUNC1(OCTEON_CN3XXX) &&
	    !FUNC1(OCTEON_CN58XX) &&
	    !FUNC1(OCTEON_CN50XX)) {
		smix_en.u64 = FUNC16(FUNC0(1));
		if (!smix_en.s.en) {
			smix_en.s.en = 1;
			FUNC17(FUNC0(1), smix_en.u64);
		}
	}

	FUNC15();
	for (interface = 0; interface < num_interfaces; interface++) {
		result |= FUNC12(interface);
		if (FUNC14(interface) > 0)
			FUNC8("Interface %d has %d ports (%s)\n",
				     interface,
				     FUNC14(interface),
				     FUNC11
				     (FUNC10
				      (interface)));
		result |= FUNC6(interface);
		result |= FUNC7(interface);
	}

	result |= FUNC4();
	result |= FUNC5();

	/* Enable any flow control and backpressure */
	result |= FUNC3();

#if CVMX_HELPER_ENABLE_IPD
	result |= cvmx_helper_ipd_and_packet_input_enable();
#endif
	return result;
}