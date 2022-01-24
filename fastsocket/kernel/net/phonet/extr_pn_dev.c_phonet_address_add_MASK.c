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
 int EEXIST ; 
 int ENOMEM ; 
 struct phonet_device* FUNC0 (struct net_device*) ; 
 struct phonet_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct phonet_device_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct net_device *dev, u8 addr)
{
	struct phonet_device_list *pndevs = FUNC3(FUNC2(dev));
	struct phonet_device *pnd;
	int err = 0;

	FUNC4(&pndevs->lock);
	/* Find or create Phonet-specific device data */
	pnd = FUNC1(dev);
	if (pnd == NULL)
		pnd = FUNC0(dev);
	if (FUNC7(pnd == NULL))
		err = -ENOMEM;
	else if (FUNC6(addr >> 2, pnd->addrs))
		err = -EEXIST;
	FUNC5(&pndevs->lock);
	return err;
}