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
struct TYPE_4__ {int en; int duplex; int slottime; int speed; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_2__ s; } ;
struct TYPE_3__ {int int_loop; int ext_loop; } ;
union cvmx_asxx_prt_loop {int u64; TYPE_1__ s; } ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

int FUNC11(int ipd_port, int enable_internal,
					   int enable_external)
{
	int interface = FUNC8(ipd_port);
	int index = FUNC7(ipd_port);
	int original_enable;
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	union cvmx_asxx_prt_loop asxx_prt_loop;

	/* Read the current enable state and save it */
	gmx_cfg.u64 = FUNC9(FUNC3(index, interface));
	original_enable = gmx_cfg.s.en;
	/* Force port to be disabled */
	gmx_cfg.s.en = 0;
	if (enable_internal) {
		/* Force speed if we're doing internal loopback */
		gmx_cfg.s.duplex = 1;
		gmx_cfg.s.slottime = 1;
		gmx_cfg.s.speed = 1;
		FUNC10(FUNC5(index, interface), 1);
		FUNC10(FUNC6(index, interface), 0x200);
		FUNC10(FUNC4(index, interface), 0x2000);
	}
	FUNC10(FUNC3(index, interface), gmx_cfg.u64);

	/* Set the loopback bits */
	asxx_prt_loop.u64 = FUNC9(FUNC0(interface));
	if (enable_internal)
		asxx_prt_loop.s.int_loop |= 1 << index;
	else
		asxx_prt_loop.s.int_loop &= ~(1 << index);
	if (enable_external)
		asxx_prt_loop.s.ext_loop |= 1 << index;
	else
		asxx_prt_loop.s.ext_loop &= ~(1 << index);
	FUNC10(FUNC0(interface), asxx_prt_loop.u64);

	/* Force enables in internal loopback */
	if (enable_internal) {
		uint64_t tmp;
		tmp = FUNC9(FUNC2(interface));
		FUNC10(FUNC2(interface),
			       (1 << index) | tmp);
		tmp = FUNC9(FUNC1(interface));
		FUNC10(FUNC1(interface),
			       (1 << index) | tmp);
		original_enable = 1;
	}

	/* Restore the enable state */
	gmx_cfg.s.en = original_enable;
	FUNC10(FUNC3(index, interface), gmx_cfg.u64);
	return 0;
}