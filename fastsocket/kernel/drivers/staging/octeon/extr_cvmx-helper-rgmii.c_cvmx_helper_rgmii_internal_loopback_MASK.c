#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int duplex; int slottime; int speed; int en; } ;
union cvmx_gmxx_prtx_cfg {int u64; TYPE_1__ s; } ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(int port)
{
	int interface = (port >> 4) & 1;
	int index = port & 0xf;
	uint64_t tmp;

	union cvmx_gmxx_prtx_cfg gmx_cfg;
	gmx_cfg.u64 = 0;
	gmx_cfg.s.duplex = 1;
	gmx_cfg.s.slottime = 1;
	gmx_cfg.s.speed = 1;
	FUNC8(FUNC5(index, interface), 1);
	FUNC8(FUNC6(index, interface), 0x200);
	FUNC8(FUNC4(index, interface), 0x2000);
	FUNC8(FUNC3(index, interface), gmx_cfg.u64);
	tmp = FUNC7(FUNC0(interface));
	FUNC8(FUNC0(interface), (1 << index) | tmp);
	tmp = FUNC7(FUNC2(interface));
	FUNC8(FUNC2(interface), (1 << index) | tmp);
	tmp = FUNC7(FUNC1(interface));
	FUNC8(FUNC1(interface), (1 << index) | tmp);
	gmx_cfg.s.en = 1;
	FUNC8(FUNC3(index, interface), gmx_cfg.u64);
}