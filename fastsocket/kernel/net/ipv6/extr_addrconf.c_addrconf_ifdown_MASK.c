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
struct net_device {int /*<<< orphan*/  ip6_ptr; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dead; struct inet6_ifaddr* if_next; int /*<<< orphan*/  lock; struct inet6_ifaddr* ifpub; struct inet6_ifaddr* tmp_next; struct inet6_ifaddr* lst_next; struct inet6_dev* idev; } ;
struct inet6_dev {int dead; int if_flags; int /*<<< orphan*/  nd_parms; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; struct inet6_ifaddr* tempaddr_list; int /*<<< orphan*/  regen_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 int IF_RA_RCVD ; 
 int IF_READY ; 
 int IF_RS_SENT ; 
 int IN6_ADDR_HSIZE ; 
 int INET6_IFADDR_STATE_DEAD ; 
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  addrconf_hash_lock ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct net* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  ifa_state_lock ; 
 int /*<<< orphan*/  FUNC8 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr** inet6_addr_lst ; 
 int /*<<< orphan*/  inet6addr_chain ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct inet6_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct net_device *dev, int how)
{
	struct inet6_dev *idev;
	struct inet6_ifaddr *ifa, **bifa;
	struct net *net = FUNC7(dev);
	int state;
	int i;

	FUNC0();

	FUNC15(net, dev);
	FUNC12(&nd_tbl, dev);

	idev = FUNC1(dev);
	if (idev == NULL)
		return -ENODEV;

	/* Step 1: remove reference to ipv6 device from parent device.
		   Do not dev_put!
	 */
	if (how) {
		idev->dead = 1;

		/* protected by rtnl_lock */
		FUNC14(dev->ip6_ptr, NULL);

		/* Step 1.5: remove snmp6 entry */
		FUNC16(idev);

	}

	/* Step 2: clear hash table */
	for (i=0; i<IN6_ADDR_HSIZE; i++) {
		bifa = &inet6_addr_lst[i];

		FUNC19(&addrconf_hash_lock);
		while ((ifa = *bifa) != NULL) {
			if (ifa->idev == idev) {
				*bifa = ifa->lst_next;
				ifa->lst_next = NULL;
				FUNC3(ifa);
				FUNC9(ifa);
				continue;
			}
			bifa = &ifa->lst_next;
		}
		FUNC20(&addrconf_hash_lock);
	}

	FUNC19(&idev->lock);

	/* Step 3: clear flags for stateless addrconf */
	if (!how)
		idev->if_flags &= ~(IF_RS_SENT|IF_RA_RCVD|IF_READY);

	/* Step 4: clear address list */
#ifdef CONFIG_IPV6_PRIVACY
	if (how && del_timer(&idev->regen_timer))
		in6_dev_put(idev);

	/* clear tempaddr list */
	while ((ifa = idev->tempaddr_list) != NULL) {
		idev->tempaddr_list = ifa->tmp_next;
		ifa->tmp_next = NULL;
		write_unlock_bh(&idev->lock);
		spin_lock_bh(&ifa->lock);

		if (ifa->ifpub) {
			in6_ifa_put(ifa->ifpub);
			ifa->ifpub = NULL;
		}
		spin_unlock_bh(&ifa->lock);
		in6_ifa_put(ifa);
		write_lock_bh(&idev->lock);
	}
#endif
	while ((ifa = idev->addr_list) != NULL) {
		idev->addr_list = ifa->if_next;
		ifa->if_next = NULL;
		FUNC3(ifa);
		FUNC20(&idev->lock);
		FUNC17(&ifa_state_lock);
		state = ifa->dead;
		ifa->dead = INET6_IFADDR_STATE_DEAD;
		FUNC18(&ifa_state_lock);

		if (state == INET6_IFADDR_STATE_DEAD)
			goto put_ifa;


		FUNC2(RTM_DELADDR, ifa);
		FUNC5(&inet6addr_chain, NETDEV_DOWN, ifa);

put_ifa:
		FUNC9(ifa);

		FUNC19(&idev->lock);
	}
	FUNC20(&idev->lock);

	/* Step 5: Discard multicast list */

	if (how)
		FUNC10(idev);
	else
		FUNC11(idev);

	idev->tstamp = jiffies;

	/* Shot the device (if unregistered) */

	if (how) {
		FUNC4(idev);
		FUNC13(&nd_tbl, idev->nd_parms);
		FUNC12(&nd_tbl, dev);
		FUNC8(idev);
	}
	return 0;
}