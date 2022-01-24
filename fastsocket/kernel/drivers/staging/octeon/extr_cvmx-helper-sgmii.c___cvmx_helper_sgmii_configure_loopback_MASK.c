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
struct TYPE_4__ {int loopbck1; } ;
union cvmx_pcsx_mrx_control_reg {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int loopbck2; } ;
union cvmx_pcsx_miscx_ctl_reg {void* u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 

int FUNC7(int ipd_port, int enable_internal,
					   int enable_external)
{
	int interface = FUNC4(ipd_port);
	int index = FUNC3(ipd_port);
	union cvmx_pcsx_mrx_control_reg pcsx_mrx_control_reg;
	union cvmx_pcsx_miscx_ctl_reg pcsx_miscx_ctl_reg;

	pcsx_mrx_control_reg.u64 =
	    FUNC5(FUNC1(index, interface));
	pcsx_mrx_control_reg.s.loopbck1 = enable_internal;
	FUNC6(FUNC1(index, interface),
		       pcsx_mrx_control_reg.u64);

	pcsx_miscx_ctl_reg.u64 =
	    FUNC5(FUNC0(index, interface));
	pcsx_miscx_ctl_reg.s.loopbck2 = enable_external;
	FUNC6(FUNC0(index, interface),
		       pcsx_miscx_ctl_reg.u64);

	FUNC2(interface, index);
	return 0;
}