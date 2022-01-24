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
struct octeon_ethernet {int port; int /*<<< orphan*/  poll; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OCTEON_IRQ_RML ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvm_oct_spi_poll ; 
 int /*<<< orphan*/  cvm_oct_spi_rml_interrupt ; 
 struct octeon_ethernet* FUNC3 (struct net_device*) ; 
 scalar_t__ number_spi_ports ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int FUNC5(struct net_device *dev)
{
	int r;
	struct octeon_ethernet *priv = FUNC3(dev);

	if (number_spi_ports == 0) {
		r = FUNC4(OCTEON_IRQ_RML, cvm_oct_spi_rml_interrupt,
				IRQF_SHARED, "SPI", &number_spi_ports);
	}
	number_spi_ports++;

	if ((priv->port == 0) || (priv->port == 16)) {
		FUNC2(FUNC0(priv->port));
		priv->poll = cvm_oct_spi_poll;
	}
	FUNC1(dev);
	return 0;
}