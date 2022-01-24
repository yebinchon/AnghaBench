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
struct TYPE_3__ {int loopbck1; } ;
union cvmx_pcsxx_control1_reg {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {int en; } ;
union cvmx_gmxx_xaui_ext_loopback {void* u64; TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

extern int FUNC6(int ipd_port,
						 int enable_internal,
						 int enable_external)
{
	int interface = FUNC3(ipd_port);
	union cvmx_pcsxx_control1_reg pcsxx_control1_reg;
	union cvmx_gmxx_xaui_ext_loopback gmxx_xaui_ext_loopback;

	/* Set the internal loop */
	pcsxx_control1_reg.u64 =
	    FUNC4(FUNC1(interface));
	pcsxx_control1_reg.s.loopbck1 = enable_internal;
	FUNC5(FUNC1(interface),
		       pcsxx_control1_reg.u64);

	/* Set the external loop */
	gmxx_xaui_ext_loopback.u64 =
	    FUNC4(FUNC0(interface));
	gmxx_xaui_ext_loopback.s.en = enable_external;
	FUNC5(FUNC0(interface),
		       gmxx_xaui_ext_loopback.u64);

	/* Take the link through a reset */
	return FUNC2(interface);
}