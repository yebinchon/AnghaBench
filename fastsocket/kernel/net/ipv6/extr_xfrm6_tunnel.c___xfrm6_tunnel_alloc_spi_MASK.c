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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  scalar_t__ u32 ;
struct xfrm6_tunnel_spi {int /*<<< orphan*/  list_byaddr; int /*<<< orphan*/  list_byspi; int /*<<< orphan*/  refcnt; scalar_t__ spi; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ XFRM6_TUNNEL_SPI_MAX ; 
 scalar_t__ XFRM6_TUNNEL_SPI_MIN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xfrm6_tunnel_spi* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ xfrm6_tunnel_spi ; 
 int /*<<< orphan*/ * xfrm6_tunnel_spi_byaddr ; 
 int /*<<< orphan*/ * xfrm6_tunnel_spi_byspi ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm6_tunnel_spi_kmem ; 

__attribute__((used)) static u32 FUNC6(xfrm_address_t *saddr)
{
	u32 spi;
	struct xfrm6_tunnel_spi *x6spi;
	int index;

	if (xfrm6_tunnel_spi < XFRM6_TUNNEL_SPI_MIN ||
	    xfrm6_tunnel_spi >= XFRM6_TUNNEL_SPI_MAX)
		xfrm6_tunnel_spi = XFRM6_TUNNEL_SPI_MIN;
	else
		xfrm6_tunnel_spi++;

	for (spi = xfrm6_tunnel_spi; spi <= XFRM6_TUNNEL_SPI_MAX; spi++) {
		index = FUNC0(spi);
		if (index >= 0)
			goto alloc_spi;
	}
	for (spi = XFRM6_TUNNEL_SPI_MIN; spi < xfrm6_tunnel_spi; spi++) {
		index = FUNC0(spi);
		if (index >= 0)
			goto alloc_spi;
	}
	spi = 0;
	goto out;
alloc_spi:
	xfrm6_tunnel_spi = spi;
	x6spi = FUNC3(xfrm6_tunnel_spi_kmem, GFP_ATOMIC);
	if (!x6spi)
		goto out;

	FUNC4(&x6spi->addr, saddr, sizeof(x6spi->addr));
	x6spi->spi = spi;
	FUNC1(&x6spi->refcnt, 1);

	FUNC2(&x6spi->list_byspi, &xfrm6_tunnel_spi_byspi[index]);

	index = FUNC5(saddr);
	FUNC2(&x6spi->list_byaddr, &xfrm6_tunnel_spi_byaddr[index]);
out:
	return spi;
}