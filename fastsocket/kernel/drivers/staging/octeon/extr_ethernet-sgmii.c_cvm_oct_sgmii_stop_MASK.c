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
struct TYPE_2__ {scalar_t__ en; } ;
union cvmx_gmxx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *dev)
{
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	struct octeon_ethernet *priv = FUNC5(dev);
	int interface = FUNC2(priv->port);
	int index = FUNC1(priv->port);

	gmx_cfg.u64 = FUNC3(FUNC0(index, interface));
	gmx_cfg.s.en = 0;
	FUNC4(FUNC0(index, interface), gmx_cfg.u64);
	return 0;
}