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
struct net_device {scalar_t__ type; int /*<<< orphan*/  dev_addr; } ;
struct dn_ifaddr {scalar_t__ ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  dnaddr_chain ; 

__attribute__((used)) static int FUNC6(struct dn_dev *dn_db, struct dn_ifaddr *ifa)
{
	struct net_device *dev = dn_db->dev;
	struct dn_ifaddr *ifa1;
	unsigned char mac_addr[6];

	FUNC0();

	/* Check for duplicates */
	for(ifa1 = dn_db->ifa_list; ifa1; ifa1 = ifa1->ifa_next) {
		if (ifa1->ifa_local == ifa->ifa_local)
			return -EEXIST;
	}

	if (dev->type == ARPHRD_ETHER) {
		if (ifa->ifa_local != FUNC4(dev->dev_addr)) {
			FUNC3(mac_addr, ifa->ifa_local);
			FUNC2(dev, mac_addr, ETH_ALEN, 0);
		}
	}

	ifa->ifa_next = dn_db->ifa_list;
	dn_db->ifa_list = ifa;

	FUNC5(RTM_NEWADDR, ifa);
	FUNC1(&dnaddr_chain, NETDEV_UP, ifa);

	return 0;
}