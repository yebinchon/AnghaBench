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
struct TYPE_2__ {int en; } ;
union cvmx_gmxx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(int interface)
{
	int num_ports = FUNC5(interface);
	int index;

	FUNC1(interface, num_ports);

	for (index = 0; index < num_ports; index++) {
		union cvmx_gmxx_prtx_cfg gmxx_prtx_cfg;
		gmxx_prtx_cfg.u64 =
		    FUNC6(FUNC0(index, interface));
		gmxx_prtx_cfg.s.en = 1;
		FUNC7(FUNC0(index, interface),
			       gmxx_prtx_cfg.u64);
		FUNC3(index, interface);
	}
	FUNC4(interface);
	FUNC2(interface);
	return 0;
}