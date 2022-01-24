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
typedef  int /*<<< orphan*/  u32 ;
struct xfrm6_tunnel_spi {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct xfrm6_tunnel_spi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm6_tunnel_spi_lock ; 

__be32 FUNC4(xfrm_address_t *saddr)
{
	struct xfrm6_tunnel_spi *x6spi;
	u32 spi;

	FUNC2(&xfrm6_tunnel_spi_lock);
	x6spi = FUNC0(saddr);
	spi = x6spi ? x6spi->spi : 0;
	FUNC3(&xfrm6_tunnel_spi_lock);
	return FUNC1(spi);
}