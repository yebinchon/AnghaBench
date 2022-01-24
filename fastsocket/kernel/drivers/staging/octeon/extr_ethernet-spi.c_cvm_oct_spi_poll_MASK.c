#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct octeon_ethernet {int port; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SPI_MODE_DUPLEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__* need_retrain ; 
 struct octeon_ethernet* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	static int spi4000_port;
	struct octeon_ethernet *priv = FUNC3(dev);
	int interface;

	for (interface = 0; interface < 2; interface++) {

		if ((priv->port == interface * 16) && need_retrain[interface]) {

			if (FUNC2
			    (interface, CVMX_SPI_MODE_DUPLEX, 10) == 0) {
				need_retrain[interface] = 0;
				FUNC0(interface);
			}
		}

		/*
		 * The SPI4000 TWSI interface is very slow. In order
		 * not to bring the system to a crawl, we only poll a
		 * single port every second. This means negotiation
		 * speed changes take up to 10 seconds, but at least
		 * we don't waste absurd amounts of time waiting for
		 * TWSI.
		 */
		if (priv->port == spi4000_port) {
			/*
			 * This function does nothing if it is called on an
			 * interface without a SPI4000.
			 */
			FUNC1(interface, priv->port);
			/*
			 * Normal ordering increments. By decrementing
			 * we only match once per iteration.
			 */
			spi4000_port--;
			if (spi4000_port < 0)
				spi4000_port = 10;
		}
	}
}