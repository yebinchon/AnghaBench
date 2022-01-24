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
typedef  int u8 ;
struct phonet_device_list {int /*<<< orphan*/  lock; } ;
struct phonet_device {int /*<<< orphan*/  addrs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PN_NO_ADDR ; 
 struct phonet_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct phonet_device_list* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

u8 FUNC9(struct net_device *dev, u8 addr)
{
	struct phonet_device_list *pndevs = FUNC5(FUNC3(dev));
	struct phonet_device *pnd;

	FUNC6(&pndevs->lock);
	pnd = FUNC1(dev);
	if (pnd) {
		FUNC0(FUNC2(pnd->addrs, 64));

		/* Use same source address as destination, if possible */
		if (!FUNC8(addr >> 2, pnd->addrs))
			addr = FUNC4(pnd->addrs, 64) << 2;
	} else
		addr = PN_NO_ADDR;
	FUNC7(&pndevs->lock);
	return addr;
}