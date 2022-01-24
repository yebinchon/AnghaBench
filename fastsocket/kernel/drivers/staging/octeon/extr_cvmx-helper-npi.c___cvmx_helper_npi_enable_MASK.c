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
struct TYPE_2__ {scalar_t__ minerr_en; scalar_t__ maxerr_en; } ;
union cvmx_pip_prt_cfgx {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int interface)
{
	/*
	 * On CN50XX, CN52XX, and CN56XX we need to disable length
	 * checking so packet < 64 bytes and jumbo frames don't get
	 * errors.
	 */
	if (!FUNC1(OCTEON_CN3XXX) &&
	    !FUNC1(OCTEON_CN58XX)) {
		int num_ports = FUNC3(interface);
		int port;
		for (port = 0; port < num_ports; port++) {
			union cvmx_pip_prt_cfgx port_cfg;
			int ipd_port =
			    FUNC2(interface, port);
			port_cfg.u64 =
			    FUNC4(FUNC0(ipd_port));
			port_cfg.s.maxerr_en = 0;
			port_cfg.s.minerr_en = 0;
			FUNC5(FUNC0(ipd_port),
				       port_cfg.u64);
		}
	}

	/* Enables are controlled by the remote host, so nothing to do here */
	return 0;
}