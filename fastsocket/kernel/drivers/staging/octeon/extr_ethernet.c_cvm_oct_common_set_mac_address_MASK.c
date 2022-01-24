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
union cvmx_gmxx_prtx_cfg {unsigned long long u64; } ;
typedef  int uint8_t ;
typedef  int uint64_t ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int) ; 
 unsigned long long FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,int) ; 
 struct octeon_ethernet* FUNC15 (struct net_device*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev, void *addr)
{
	struct octeon_ethernet *priv = FUNC15(dev);
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	int interface = FUNC9(priv->port);
	int index = FUNC8(priv->port);

	FUNC14(dev->dev_addr, addr + 2, 6);

	if ((interface < 2)
	    && (FUNC11(interface) !=
		CVMX_HELPER_INTERFACE_MODE_SPI)) {
		int i;
		uint8_t *ptr = addr;
		uint64_t mac = 0;
		for (i = 0; i < 6; i++)
			mac = (mac << 8) | (uint64_t) (ptr[i + 2]);

		gmx_cfg.u64 =
		    FUNC12(FUNC0(index, interface));
		FUNC13(FUNC0(index, interface),
			       gmx_cfg.u64 & ~1ull);

		FUNC13(FUNC7(index, interface), mac);
		FUNC13(FUNC1(index, interface),
			       ptr[2]);
		FUNC13(FUNC2(index, interface),
			       ptr[3]);
		FUNC13(FUNC3(index, interface),
			       ptr[4]);
		FUNC13(FUNC4(index, interface),
			       ptr[5]);
		FUNC13(FUNC5(index, interface),
			       ptr[6]);
		FUNC13(FUNC6(index, interface),
			       ptr[7]);
		FUNC10(dev);
		FUNC13(FUNC0(index, interface),
			       gmx_cfg.u64);
	}
	return 0;
}