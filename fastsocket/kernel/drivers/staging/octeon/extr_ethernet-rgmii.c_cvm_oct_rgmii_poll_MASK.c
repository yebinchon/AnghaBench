#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int port_bit; } ;
union cvmx_ipd_sub_port_fcs {void* u64; TYPE_3__ s; } ;
struct TYPE_8__ {scalar_t__ pcterr; } ;
union cvmx_gmxx_rxx_int_reg {void* u64; TYPE_1__ s; } ;
struct TYPE_9__ {int pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {void* u64; TYPE_2__ s; } ;
struct octeon_ethernet {unsigned long long port; scalar_t__ link_info; int queue; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int speed; scalar_t__ full_duplex; scalar_t__ link_up; } ;
struct TYPE_12__ {scalar_t__ u64; TYPE_4__ s; } ;
typedef  TYPE_5__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  CVMX_IPD_SUB_PORT_FCS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (unsigned long long) ; 
 int FUNC4 (unsigned long long) ; 
 scalar_t__ USE_10MBPS_PREAMBLE_WORKAROUND ; 
 TYPE_5__ FUNC5 (unsigned long long) ; 
 TYPE_5__ FUNC6 (unsigned long long) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  global_register_lock ; 
 struct octeon_ethernet* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC9(dev);
	unsigned long flags;
	cvmx_helper_link_info_t link_info;

	/*
	 * Take the global register lock since we are going to touch
	 * registers that affect more than one port.
	 */
	FUNC13(&global_register_lock, flags);

	link_info = FUNC6(priv->port);
	if (link_info.u64 == priv->link_info) {

		/*
		 * If the 10Mbps preamble workaround is supported and we're
		 * at 10Mbps we may need to do some special checking.
		 */
		if (USE_10MBPS_PREAMBLE_WORKAROUND && (link_info.s.speed == 10)) {

			/*
			 * Read the GMXX_RXX_INT_REG[PCTERR] bit and
			 * see if we are getting preamble errors.
			 */
			int interface = FUNC4(priv->port);
			int index = FUNC3(priv->port);
			union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
			gmxx_rxx_int_reg.u64 =
			    FUNC7(FUNC1
					  (index, interface));
			if (gmxx_rxx_int_reg.s.pcterr) {

				/*
				 * We are getting preamble errors at
				 * 10Mbps.  Most likely the PHY is
				 * giving us packets with mis aligned
				 * preambles. In order to get these
				 * packets we need to disable preamble
				 * checking and do it in software.
				 */
				union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
				union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;

				/* Disable preamble checking */
				gmxx_rxx_frm_ctl.u64 =
				    FUNC7(FUNC0
						  (index, interface));
				gmxx_rxx_frm_ctl.s.pre_chk = 0;
				FUNC8(FUNC0
					       (index, interface),
					       gmxx_rxx_frm_ctl.u64);

				/* Disable FCS stripping */
				ipd_sub_port_fcs.u64 =
				    FUNC7(CVMX_IPD_SUB_PORT_FCS);
				ipd_sub_port_fcs.s.port_bit &=
				    0xffffffffull ^ (1ull << priv->port);
				FUNC8(CVMX_IPD_SUB_PORT_FCS,
					       ipd_sub_port_fcs.u64);

				/* Clear any error bits */
				FUNC8(FUNC1
					       (index, interface),
					       gmxx_rxx_int_reg.u64);
				FUNC2("%s: Using 10Mbps with software "
					   "preamble removal\n",
				     dev->name);
			}
		}
		FUNC14(&global_register_lock, flags);
		return;
	}

	/* If the 10Mbps preamble workaround is allowed we need to on
	   preamble checking, FCS stripping, and clear error bits on
	   every speed change. If errors occur during 10Mbps operation
	   the above code will change this stuff */
	if (USE_10MBPS_PREAMBLE_WORKAROUND) {

		union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
		union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
		union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
		int interface = FUNC4(priv->port);
		int index = FUNC3(priv->port);

		/* Enable preamble checking */
		gmxx_rxx_frm_ctl.u64 =
		    FUNC7(FUNC0(index, interface));
		gmxx_rxx_frm_ctl.s.pre_chk = 1;
		FUNC8(FUNC0(index, interface),
			       gmxx_rxx_frm_ctl.u64);
		/* Enable FCS stripping */
		ipd_sub_port_fcs.u64 = FUNC7(CVMX_IPD_SUB_PORT_FCS);
		ipd_sub_port_fcs.s.port_bit |= 1ull << priv->port;
		FUNC8(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);
		/* Clear any error bits */
		gmxx_rxx_int_reg.u64 =
		    FUNC7(FUNC1(index, interface));
		FUNC8(FUNC1(index, interface),
			       gmxx_rxx_int_reg.u64);
	}

	link_info = FUNC5(priv->port);
	priv->link_info = link_info.u64;
	FUNC14(&global_register_lock, flags);

	/* Tell Linux */
	if (link_info.s.link_up) {

		if (!FUNC11(dev))
			FUNC12(dev);
		if (priv->queue != -1)
			FUNC2
			    ("%s: %u Mbps %s duplex, port %2d, queue %2d\n",
			     dev->name, link_info.s.speed,
			     (link_info.s.full_duplex) ? "Full" : "Half",
			     priv->port, priv->queue);
		else
			FUNC2("%s: %u Mbps %s duplex, port %2d, POW\n",
				   dev->name, link_info.s.speed,
				   (link_info.s.full_duplex) ? "Full" : "Half",
				   priv->port);
	} else {

		if (FUNC11(dev))
			FUNC10(dev);
		FUNC2("%s: Link down\n", dev->name);
	}
}