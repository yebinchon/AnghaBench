#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tx_status ;
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct octeon_ethernet {scalar_t__ port; struct net_device_stats stats; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  rx_status ;
struct TYPE_6__ {int /*<<< orphan*/  dropped_packets; scalar_t__ fcs_align_err_packets; scalar_t__ inb_errors; scalar_t__ multicast_packets; scalar_t__ octets; scalar_t__ inb_octets; scalar_t__ packets; scalar_t__ inb_packets; } ;
typedef  TYPE_1__ cvmx_pko_port_status_t ;
typedef  TYPE_1__ cvmx_pip_port_status_t ;
typedef  int /*<<< orphan*/  atomic_t ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 scalar_t__ CVMX_PIP_NUM_INPUT_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct octeon_ethernet* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static struct net_device_stats *FUNC7(struct net_device *dev)
{
	cvmx_pip_port_status_t rx_status;
	cvmx_pko_port_status_t tx_status;
	struct octeon_ethernet *priv = FUNC5(dev);

	if (priv->port < CVMX_PIP_NUM_INPUT_PORTS) {
		if (FUNC6()) {
			/* The simulator doesn't support statistics */
			FUNC4(&rx_status, 0, sizeof(rx_status));
			FUNC4(&tx_status, 0, sizeof(tx_status));
		} else {
			FUNC2(priv->port, 1, &rx_status);
			FUNC3(priv->port, 1, &tx_status);
		}

		priv->stats.rx_packets += rx_status.inb_packets;
		priv->stats.tx_packets += tx_status.packets;
		priv->stats.rx_bytes += rx_status.inb_octets;
		priv->stats.tx_bytes += tx_status.octets;
		priv->stats.multicast += rx_status.multicast_packets;
		priv->stats.rx_crc_errors += rx_status.inb_errors;
		priv->stats.rx_frame_errors += rx_status.fcs_align_err_packets;

		/*
		 * The drop counter must be incremented atomically
		 * since the RX tasklet also increments it.
		 */
#ifdef CONFIG_64BIT
		atomic64_add(rx_status.dropped_packets,
			     (atomic64_t *)&priv->stats.rx_dropped);
#else
		FUNC1(rx_status.dropped_packets,
			     (atomic_t *)&priv->stats.rx_dropped);
#endif
	}

	return &priv->stats;
}