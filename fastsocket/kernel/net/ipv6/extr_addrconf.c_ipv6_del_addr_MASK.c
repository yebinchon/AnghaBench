#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {int rt6i_flags; unsigned long rt6i_expires; TYPE_4__ u; } ;
struct TYPE_8__ {struct rt6_info* ip6_null_entry; } ;
struct net {TYPE_3__ ipv6; } ;
struct inet6_ifaddr {int dead; int flags; unsigned long tstamp; struct inet6_dev* idev; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; struct inet6_ifaddr* if_next; int /*<<< orphan*/  lock; int /*<<< orphan*/  valid_lft; struct inet6_ifaddr* tmp_next; struct inet6_ifaddr* ifpub; struct inet6_ifaddr* lst_next; } ;
struct inet6_dev {TYPE_5__* dev; int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; struct inet6_ifaddr* tempaddr_list; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {struct in6_addr daddr; } ;
struct TYPE_7__ {TYPE_1__ ip6_u; } ;
struct flowi {TYPE_2__ nl_u; int /*<<< orphan*/  oif; } ;
struct TYPE_10__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TEMPORARY ; 
 int INET6_IFADDR_STATE_DEAD ; 
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  RT6_LOOKUP_F_IFACE ; 
 int RTF_EXPIRES ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  addrconf_hash_lock ; 
 scalar_t__ FUNC2 (struct rt6_info*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 struct net* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifa_state_lock ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr** inet6_addr_lst ; 
 int /*<<< orphan*/  inet6addr_chain ; 
 int /*<<< orphan*/  FUNC8 (struct rt6_info*) ; 
 scalar_t__ FUNC9 (struct net*,struct flowi*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC14 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(struct inet6_ifaddr *ifp)
{
	struct inet6_ifaddr *ifa, **ifap;
	struct inet6_dev *idev = ifp->idev;
	int state;
	int hash;
	int deleted = 0, onlink = 0;
	unsigned long expires = jiffies;

	hash = FUNC10(&ifp->addr);

	FUNC16(&ifa_state_lock);
	state = ifp->dead;
	ifp->dead = INET6_IFADDR_STATE_DEAD;
	FUNC18(&ifa_state_lock);

	if (state == INET6_IFADDR_STATE_DEAD)
		goto out;


	FUNC20(&addrconf_hash_lock);
	for (ifap = &inet6_addr_lst[hash]; (ifa=*ifap) != NULL;
	     ifap = &ifa->lst_next) {
		if (ifa == ifp) {
			*ifap = ifa->lst_next;
			FUNC0(ifp);
			ifa->lst_next = NULL;
			break;
		}
	}
	FUNC21(&addrconf_hash_lock);

	FUNC20(&idev->lock);
#ifdef CONFIG_IPV6_PRIVACY
	if (ifp->flags&IFA_F_TEMPORARY) {
		for (ifap = &idev->tempaddr_list; (ifa=*ifap) != NULL;
		     ifap = &ifa->tmp_next) {
			if (ifa == ifp) {
				*ifap = ifa->tmp_next;
				if (ifp->ifpub) {
					in6_ifa_put(ifp->ifpub);
					ifp->ifpub = NULL;
				}
				__in6_ifa_put(ifp);
				ifa->tmp_next = NULL;
				break;
			}
		}
	}
#endif

	for (ifap = &idev->addr_list; (ifa=*ifap) != NULL;) {
		if (ifa == ifp) {
			*ifap = ifa->if_next;
			FUNC0(ifp);
			ifa->if_next = NULL;
			if (!(ifp->flags & IFA_F_PERMANENT) || onlink > 0)
				break;
			deleted = 1;
			continue;
		} else if (ifp->flags & IFA_F_PERMANENT) {
			if (FUNC13(&ifa->addr, &ifp->addr,
					      ifp->prefix_len)) {
				if (ifa->flags & IFA_F_PERMANENT) {
					onlink = 1;
					if (deleted)
						break;
				} else {
					unsigned long lifetime;

					if (!onlink)
						onlink = -1;

					FUNC15(&ifa->lock);

					lifetime = FUNC3(ifa->valid_lft, HZ);
					/*
					 * Note: Because this address is
					 * not permanent, lifetime <
					 * LONG_MAX / HZ here.
					 */
					if (FUNC19(expires,
							ifa->tstamp + lifetime * HZ))
						expires = ifa->tstamp + lifetime * HZ;
					FUNC17(&ifa->lock);
				}
			}
		}
		ifap = &ifa->if_next;
	}
	FUNC21(&idev->lock);

	FUNC1(ifp);

	FUNC12(RTM_DELADDR, ifp);

	FUNC4(&inet6addr_chain, NETDEV_DOWN, ifp);

	/*
	 * Purge or update corresponding prefix
	 *
	 * 1) we don't purge prefix here if address was not permanent.
	 *    prefix is managed by its own lifetime.
	 * 2) if there're no addresses, delete prefix.
	 * 3) if there're still other permanent address(es),
	 *    corresponding prefix is still permanent.
	 * 4) otherwise, update prefix lifetime to the
	 *    longest valid lifetime among the corresponding
	 *    addresses on the device.
	 *    Note: subsequent RA will update lifetime.
	 *
	 * --yoshfuji
	 */
	if ((ifp->flags & IFA_F_PERMANENT) && onlink < 1) {
		struct in6_addr prefix;
		struct rt6_info *rt;
		struct net *net = FUNC5(ifp->idev->dev);
		struct flowi fl = {};

		FUNC11(&prefix, &ifp->addr, ifp->prefix_len);
		fl.oif = ifp->idev->dev->ifindex;
		fl.nl_u.ip6_u.daddr = prefix;
		rt = (struct rt6_info *)FUNC9(net, &fl,
							 RT6_LOOKUP_F_IFACE);

		if (rt != net->ipv6.ip6_null_entry &&
		    FUNC2(rt)) {
			if (onlink == 0) {
				FUNC8(rt);
				rt = NULL;
			} else if (!(rt->rt6i_flags & RTF_EXPIRES)) {
				rt->rt6i_expires = expires;
				rt->rt6i_flags |= RTF_EXPIRES;
			}
		}
		FUNC6(&rt->u.dst);
	}

	/* clean up prefsrc entries */
	FUNC14(ifp);
out:
	FUNC7(ifp);
}