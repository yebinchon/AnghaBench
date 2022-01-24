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
struct dn_dev {struct net_device* dev; int /*<<< orphan*/ * ifa_list; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dn_ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  dnaddr_chain ; 

__attribute__((used)) static void FUNC8(struct dn_dev *dn_db, struct dn_ifaddr **ifap, int destroy)
{
	struct dn_ifaddr *ifa1 = *ifap;
	unsigned char mac_addr[6];
	struct net_device *dev = dn_db->dev;

	FUNC0();

	*ifap = ifa1->ifa_next;

	if (dn_db->dev->type == ARPHRD_ETHER) {
		if (ifa1->ifa_local != FUNC6(dev->dev_addr)) {
			FUNC5(mac_addr, ifa1->ifa_local);
			FUNC2(dev, mac_addr, ETH_ALEN, 0);
		}
	}

	FUNC7(RTM_DELADDR, ifa1);
	FUNC1(&dnaddr_chain, NETDEV_DOWN, ifa1);
	if (destroy) {
		FUNC4(ifa1);

		if (dn_db->ifa_list == NULL)
			FUNC3(dn_db->dev);
	}
}