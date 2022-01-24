#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ mark; } ;
struct TYPE_9__ {struct net_device* dev; int /*<<< orphan*/  rt_next; } ;
struct TYPE_8__ {TYPE_3__ dst; } ;
struct TYPE_7__ {int fl4_dst; int fl4_src; int iif; int oif; int fl4_tos; scalar_t__ mark; } ;
struct rtable {TYPE_2__ u; TYPE_1__ fl; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in_device {int dummy; } ;
typedef  int __be32 ;
struct TYPE_11__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_10__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 int IPTOS_RT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 struct net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_hit ; 
 int /*<<< orphan*/  in_hlist_search ; 
 int FUNC5 (struct in_device*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*,int,int,int,struct net_device*,int) ; 
 int FUNC8 (struct sk_buff*,int,int,int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC11 (struct net*,struct net*) ; 
 struct rtable* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct net*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*) ; 
 unsigned int FUNC17 (int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* rt_hash_table ; 
 int /*<<< orphan*/  FUNC18 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,TYPE_3__*) ; 

int FUNC20(struct sk_buff *skb, __be32 daddr, __be32 saddr,
		   u8 tos, struct net_device *dev)
{
	struct rtable * rth;
	unsigned	hash;
	int iif = dev->ifindex;
	struct net *net;

	net = FUNC3(dev);

	if (!FUNC15(net))
		goto skip_cache;

	tos &= IPTOS_RT_MASK;
	hash = FUNC17(daddr, saddr, iif, FUNC16(net));

	FUNC13();
	for (rth = FUNC12(rt_hash_table[hash].chain); rth;
	     rth = FUNC12(rth->u.dst.rt_next)) {
		if (((rth->fl.fl4_dst ^ daddr) |
		     (rth->fl.fl4_src ^ saddr) |
		     (rth->fl.iif ^ iif) |
		     rth->fl.oif |
		     (rth->fl.fl4_tos ^ tos)) == 0 &&
		    rth->fl.mark == skb->mark &&
		    FUNC11(FUNC3(rth->u.dst.dev), net) &&
		    !FUNC18(rth)) {
			FUNC4(&rth->u.dst, jiffies);
			FUNC1(in_hit);
			FUNC14();
			FUNC19(skb, &rth->u.dst);
			return 0;
		}
		FUNC1(in_hlist_search);
	}
	FUNC14();

skip_cache:
	/* Multicast recognition logic is moved from route cache to here.
	   The problem was that too many Ethernet cards have broken/missing
	   hardware multicast filters :-( As result the host on multicasting
	   network acquires a lot of useless route cache entries, sort of
	   SDR messages from all the world. Now we try to get rid of them.
	   Really, provided software IP multicast filter is organized
	   reasonably (at least, hashed), it does not result in a slowdown
	   comparing with route cache reject entries.
	   Note, that multicast routers are not affected, because
	   route cache entry is created eventually.
	 */
	if (FUNC10(daddr)) {
		struct in_device *in_dev;

		FUNC13();
		if ((in_dev = FUNC2(dev)) != NULL) {
			int our = FUNC5(in_dev, daddr, saddr,
				FUNC6(skb)->protocol);
			if (our
#ifdef CONFIG_IP_MROUTE
			    || (!ipv4_is_local_multicast(daddr) &&
				IN_DEV_MFORWARD(in_dev))
#endif
			    ) {
				FUNC14();
				return FUNC7(skb, daddr, saddr,
							 tos, dev, our);
			}
		}
		FUNC14();
		return -EINVAL;
	}
	return FUNC8(skb, daddr, saddr, tos, dev);
}