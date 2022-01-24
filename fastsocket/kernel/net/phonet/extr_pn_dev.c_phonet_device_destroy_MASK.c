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
struct phonet_device {int /*<<< orphan*/  addrs; int /*<<< orphan*/  list; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 struct phonet_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct phonet_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 struct phonet_device_list* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct phonet_device_list *pndevs = FUNC8(FUNC2(dev));
	struct phonet_device *pnd;

	FUNC0();

	FUNC9(&pndevs->lock);
	pnd = FUNC1(dev);
	if (pnd)
		FUNC6(&pnd->list);
	FUNC10(&pndevs->lock);

	if (pnd) {
		u8 addr;

		for (addr = FUNC3(pnd->addrs, 64); addr < 64;
			addr = FUNC4(pnd->addrs, 64, 1+addr))
			FUNC7(RTM_DELADDR, dev, addr);
		FUNC5(pnd);
	}
}