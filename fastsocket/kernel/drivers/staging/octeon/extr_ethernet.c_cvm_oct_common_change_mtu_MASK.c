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
struct TYPE_2__ {int minlen; int maxlen; } ;
union cvmx_pip_frm_len_chkx {int u64; TYPE_1__ s; } ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct octeon_ethernet* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, int new_mtu)
{
	struct octeon_ethernet *priv = FUNC8(dev);
	int interface = FUNC4(priv->port);
	int index = FUNC3(priv->port);
#if defined(CONFIG_VLAN_8021Q) || defined(CONFIG_VLAN_8021Q_MODULE)
	int vlan_bytes = 4;
#else
	int vlan_bytes = 0;
#endif

	/*
	 * Limit the MTU to make sure the ethernet packets are between
	 * 64 bytes and 65535 bytes.
	 */
	if ((new_mtu + 14 + 4 + vlan_bytes < 64)
	    || (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
		FUNC9("MTU must be between %d and %d.\n",
		       64 - 14 - 4 - vlan_bytes, 65392 - 14 - 4 - vlan_bytes);
		return -EINVAL;
	}
	dev->mtu = new_mtu;

	if ((interface < 2)
	    && (FUNC6(interface) !=
		CVMX_HELPER_INTERFACE_MODE_SPI)) {
		/* Add ethernet header and FCS, and VLAN if configured. */
		int max_packet = new_mtu + 14 + 4 + vlan_bytes;

		if (FUNC5(OCTEON_CN3XXX)
		    || FUNC5(OCTEON_CN58XX)) {
			/* Signal errors on packets larger than the MTU */
			FUNC7(FUNC0(index, interface),
				       max_packet);
		} else {
			/*
			 * Set the hardware to truncate packets larger
			 * than the MTU and smaller the 64 bytes.
			 */
			union cvmx_pip_frm_len_chkx frm_len_chk;
			frm_len_chk.u64 = 0;
			frm_len_chk.s.minlen = 64;
			frm_len_chk.s.maxlen = max_packet;
			FUNC7(FUNC2(interface),
				       frm_len_chk.u64);
		}
		/*
		 * Set the hardware to truncate packets larger than
		 * the MTU. The jabber register must be set to a
		 * multiple of 8 bytes, so round up.
		 */
		FUNC7(FUNC1(index, interface),
			       (max_packet + 7) & ~7u);
	}
	return 0;
}