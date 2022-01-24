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
struct TYPE_4__ {int phy_dupx; int phy_link; int phy_spd; } ;
union cvmx_gmxx_rxx_int_en {int /*<<< orphan*/  u64; TYPE_2__ s; } ;
struct octeon_ethernet {scalar_t__ imode; scalar_t__ port; int /*<<< orphan*/  poll; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_GMII ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_RGMII ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OCTEON_IRQ_RML ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  cvm_oct_rgmii_poll ; 
 int /*<<< orphan*/  cvm_oct_rgmii_rml_interrupt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC6 (struct net_device*) ; 
 scalar_t__ number_rgmii_ports ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC6(dev);
	int r;

	FUNC3(dev);
	dev->netdev_ops->ndo_stop(dev);

	/*
	 * Due to GMX errata in CN3XXX series chips, it is necessary
	 * to take the link down immediately whne the PHY changes
	 * state. In order to do this we call the poll function every
	 * time the RGMII inband status changes.  This may cause
	 * problems if the PHY doesn't implement inband status
	 * properly.
	 */
	if (number_rgmii_ports == 0) {
		r = FUNC8(OCTEON_IRQ_RML, cvm_oct_rgmii_rml_interrupt,
				IRQF_SHARED, "RGMII", &number_rgmii_ports);
	}
	number_rgmii_ports++;

	/*
	 * Only true RGMII ports need to be polled. In GMII mode, port
	 * 0 is really a RGMII port.
	 */
	if (((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII)
	     && (priv->port == 0))
	    || (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {

		if (!FUNC7()) {

			union cvmx_gmxx_rxx_int_en gmx_rx_int_en;
			int interface = FUNC2(priv->port);
			int index = FUNC1(priv->port);

			/*
			 * Enable interrupts on inband status changes
			 * for this port.
			 */
			gmx_rx_int_en.u64 =
			    FUNC4(FUNC0
					  (index, interface));
			gmx_rx_int_en.s.phy_dupx = 1;
			gmx_rx_int_en.s.phy_link = 1;
			gmx_rx_int_en.s.phy_spd = 1;
			FUNC5(FUNC0(index, interface),
				       gmx_rx_int_en.u64);
			priv->poll = cvm_oct_rgmii_poll;
		}
	}

	return 0;
}