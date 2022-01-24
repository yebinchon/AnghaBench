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
struct pneigh_entry {struct net_device* dev; int /*<<< orphan*/  key; } ;
struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct in6_addr*) ; 

__attribute__((used)) static int FUNC3(struct pneigh_entry *n)
{
	struct in6_addr *addr = (struct in6_addr*)&n->key;
	struct in6_addr maddr;
	struct net_device *dev = n->dev;

	if (dev == NULL || FUNC0(dev) == NULL)
		return -EINVAL;
	FUNC1(addr, &maddr);
	FUNC2(dev, &maddr);
	return 0;
}