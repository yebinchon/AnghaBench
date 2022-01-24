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
struct TYPE_2__ {scalar_t__ phy_spd; scalar_t__ phy_link; scalar_t__ phy_dupx; } ;
union cvmx_gmxx_rxx_int_en {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_ethernet {scalar_t__ imode; scalar_t__ port; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_GMII ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_RGMII ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  OCTEON_IRQ_RML ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct octeon_ethernet* FUNC7 (struct net_device*) ; 
 scalar_t__ number_rgmii_ports ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC7(dev);
	FUNC3(dev);

	/*
	 * Only true RGMII ports need to be polled. In GMII mode, port
	 * 0 is really a RGMII port.
	 */
	if (((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII)
	     && (priv->port == 0))
	    || (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {

		if (!FUNC8()) {

			union cvmx_gmxx_rxx_int_en gmx_rx_int_en;
			int interface = FUNC2(priv->port);
			int index = FUNC1(priv->port);

			/*
			 * Disable interrupts on inband status changes
			 * for this port.
			 */
			gmx_rx_int_en.u64 =
			    FUNC4(FUNC0
					  (index, interface));
			gmx_rx_int_en.s.phy_dupx = 0;
			gmx_rx_int_en.s.phy_link = 0;
			gmx_rx_int_en.s.phy_spd = 0;
			FUNC5(FUNC0(index, interface),
				       gmx_rx_int_en.u64);
		}
	}

	/* Remove the interrupt handler when the last port is removed. */
	number_rgmii_ports--;
	if (number_rgmii_ports == 0)
		FUNC6(OCTEON_IRQ_RML, &number_rgmii_ports);
}