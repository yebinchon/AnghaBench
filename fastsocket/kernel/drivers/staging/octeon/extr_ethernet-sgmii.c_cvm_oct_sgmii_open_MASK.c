#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int en; } ;
union cvmx_gmxx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_2__ s; } ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  link_up; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef  TYPE_3__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct net_device *dev)
{
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	struct octeon_ethernet *priv = FUNC6(dev);
	int interface = FUNC2(priv->port);
	int index = FUNC1(priv->port);
	cvmx_helper_link_info_t link_info;

	gmx_cfg.u64 = FUNC4(FUNC0(index, interface));
	gmx_cfg.s.en = 1;
	FUNC5(FUNC0(index, interface), gmx_cfg.u64);

	if (!FUNC8()) {
		link_info = FUNC3(priv->port);
		if (!link_info.s.link_up)
			FUNC7(dev);
	}

	return 0;
}