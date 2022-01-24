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
struct net_device {scalar_t__ type; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {scalar_t__ s6_addr; int /*<<< orphan*/ * s6_addr32; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ARCNET ; 
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_FDDI ; 
 scalar_t__ ARPHRD_IEEE802_TR ; 
 scalar_t__ ARPHRD_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct in6_addr addr;
	struct inet6_dev    * idev;

	FUNC0();

	if ((dev->type != ARPHRD_ETHER) &&
	    (dev->type != ARPHRD_FDDI) &&
	    (dev->type != ARPHRD_IEEE802_TR) &&
	    (dev->type != ARPHRD_ARCNET) &&
	    (dev->type != ARPHRD_INFINIBAND)) {
		/* Alas, we support only Ethernet autoconfiguration. */
		return;
	}

	idev = FUNC1(dev);
	if (idev == NULL)
		return;

	FUNC5(&addr, 0, sizeof(struct in6_addr));
	addr.s6_addr32[0] = FUNC3(0xFE800000);

	if (FUNC4(addr.s6_addr + 8, dev) == 0)
		FUNC2(idev, &addr);
}