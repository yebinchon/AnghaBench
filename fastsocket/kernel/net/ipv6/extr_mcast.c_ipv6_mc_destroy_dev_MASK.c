#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ forwarding; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; TYPE_1__ cnf; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  in6addr_linklocal_allnodes ; 
 int /*<<< orphan*/  in6addr_linklocal_allrouters ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inet6_dev *idev)
{
	struct ifmcaddr6 *i;

	/* Deactivate timers */
	FUNC2(idev);

	/* Delete all-nodes address. */
	/* We cannot call ipv6_dev_mc_dec() directly, our caller in
	 * addrconf.c has NULL'd out dev->ip6_ptr so in6_dev_get() will
	 * fail.
	 */
	FUNC0(idev, &in6addr_linklocal_allnodes);

	if (idev->cnf.forwarding)
		FUNC0(idev, &in6addr_linklocal_allrouters);

	FUNC4(&idev->lock);
	while ((i = idev->mc_list) != NULL) {
		idev->mc_list = i->next;
		FUNC5(&idev->lock);

		FUNC1(i);
		FUNC3(i);

		FUNC4(&idev->lock);
	}
	FUNC5(&idev->lock);
}