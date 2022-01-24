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
struct phonet_device {int /*<<< orphan*/  list; int /*<<< orphan*/  addrs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 struct phonet_device* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phonet_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct phonet_device_list* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(struct net_device *dev, u8 addr)
{
	struct phonet_device_list *pndevs = FUNC5(FUNC2(dev));
	struct phonet_device *pnd;
	int err = 0;

	FUNC6(&pndevs->lock);
	pnd = FUNC0(dev);
	if (!pnd || !FUNC8(addr >> 2, pnd->addrs))
		err = -EADDRNOTAVAIL;
	else if (FUNC1(pnd->addrs, 64)) {
		FUNC4(&pnd->list);
		FUNC3(pnd);
	}
	FUNC7(&pndevs->lock);
	return err;
}