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
struct TYPE_5__ {int qos_mask; int eid; int pid; scalar_t__ static_p; } ;
union cvmx_pko_mem_port_ptrs {void* u64; TYPE_2__ s; } ;
struct TYPE_4__ {int en; } ;
union cvmx_gmxx_inf_mode {void* u64; TYPE_1__ s; } ;
struct TYPE_6__ {scalar_t__ hg2tx_en; } ;
union cvmx_gmxx_hg2_control {TYPE_3__ s; void* u64; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_PORT_PTRS ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

int FUNC5(int interface)
{
	int i;
	union cvmx_gmxx_hg2_control gmx_hg2_control;
	union cvmx_gmxx_inf_mode mode;

	/*
	 * Due to errata GMX-700 on CN56XXp1.x and CN52XXp1.x, the
	 * interface needs to be enabled before IPD otherwise per port
	 * backpressure may not work properly.
	 */
	mode.u64 = FUNC3(FUNC1(interface));
	mode.s.en = 1;
	FUNC4(FUNC1(interface), mode.u64);

	FUNC2(interface, 1);

	/*
	 * Setup PKO to support 16 ports for HiGig2 virtual
	 * ports. We're pointing all of the PKO packet ports for this
	 * interface to the XAUI. This allows us to use HiGig2
	 * backpressure per port.
	 */
	for (i = 0; i < 16; i++) {
		union cvmx_pko_mem_port_ptrs pko_mem_port_ptrs;
		pko_mem_port_ptrs.u64 = 0;
		/*
		 * We set each PKO port to have equal priority in a
		 * round robin fashion.
		 */
		pko_mem_port_ptrs.s.static_p = 0;
		pko_mem_port_ptrs.s.qos_mask = 0xff;
		/* All PKO ports map to the same XAUI hardware port */
		pko_mem_port_ptrs.s.eid = interface * 4;
		pko_mem_port_ptrs.s.pid = interface * 16 + i;
		FUNC4(CVMX_PKO_MEM_PORT_PTRS, pko_mem_port_ptrs.u64);
	}

	/* If HiGig2 is enabled return 16 ports, otherwise return 1 port */
	gmx_hg2_control.u64 = FUNC3(FUNC0(interface));
	if (gmx_hg2_control.s.hg2tx_en)
		return 16;
	else
		return 1;
}