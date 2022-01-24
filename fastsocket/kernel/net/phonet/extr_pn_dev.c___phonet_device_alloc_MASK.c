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
struct phonet_device_list {int /*<<< orphan*/  list; } ;
struct phonet_device {int /*<<< orphan*/  list; int /*<<< orphan*/  addrs; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct phonet_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phonet_device_list* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phonet_device *FUNC5(struct net_device *dev)
{
	struct phonet_device_list *pndevs = FUNC4(FUNC1(dev));
	struct phonet_device *pnd = FUNC2(sizeof(*pnd), GFP_ATOMIC);
	if (pnd == NULL)
		return NULL;
	pnd->netdev = dev;
	FUNC0(pnd->addrs, 64);

	FUNC3(&pnd->list, &pndevs->list);
	return pnd;
}