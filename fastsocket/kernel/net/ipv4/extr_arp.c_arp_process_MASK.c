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
typedef  int u16 ;
struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_1__ dst; } ;
struct rtable {int rt_type; TYPE_2__ u; } ;
struct net_device {int type; unsigned char* broadcast; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;
struct net {int dummy; } ;
struct neighbour {TYPE_3__* parms; scalar_t__ updated; } ;
struct in_device {TYPE_4__* arp_parms; } ;
struct arphdr {scalar_t__ ar_pro; scalar_t__ ar_hrd; scalar_t__ ar_op; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__ proxy_delay; } ;
struct TYPE_8__ {scalar_t__ locktime; } ;

/* Variables and functions */
#define  ARPHRD_AX25 133 
 int ARPHRD_DLCI ; 
#define  ARPHRD_ETHER 132 
#define  ARPHRD_FDDI 131 
#define  ARPHRD_IEEE802 130 
#define  ARPHRD_IEEE802_TR 129 
#define  ARPHRD_NETROM 128 
 int const ARPOP_REPLY ; 
 int const ARPOP_REQUEST ; 
 int /*<<< orphan*/  ARP_ACCEPT ; 
 int const AX25_P_IP ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int const ETH_P_IP ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int LOCALLY_ENQUEUED ; 
 TYPE_5__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  NEIGH_UPDATE_F_OVERRIDE ; 
 int NUD_REACHABLE ; 
 int NUD_STALE ; 
 scalar_t__ PACKET_HOST ; 
 int RTN_LOCAL ; 
 int RTN_UNICAST ; 
 struct neighbour* FUNC5 (int /*<<< orphan*/ *,scalar_t__*,struct net_device*,int) ; 
 int FUNC6 (scalar_t__,scalar_t__,struct net_device*) ; 
 scalar_t__ FUNC7 (struct in_device*,struct net_device*,struct rtable*) ; 
 scalar_t__ FUNC8 (struct in_device*,struct net_device*,struct rtable*,scalar_t__,scalar_t__) ; 
 struct arphdr* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct in_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int const,int /*<<< orphan*/ ,scalar_t__,struct net_device*,scalar_t__,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct net* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (int const) ; 
 struct in_device* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct in_device*) ; 
 int FUNC17 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC18 (struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,unsigned char*,int) ; 
 struct neighbour* FUNC22 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC24 (struct neighbour*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_4__*,struct sk_buff*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,struct net*,scalar_t__*,struct net_device*,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC27 (struct sk_buff*) ; 
 int FUNC28 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC29(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct in_device *in_dev = FUNC15(dev);
	struct arphdr *arp;
	unsigned char *arp_ptr;
	struct rtable *rt;
	unsigned char *sha;
	__be32 sip, tip;
	u16 dev_type = dev->type;
	int addr_type;
	struct neighbour *n;
	struct net *net = FUNC13(dev);

	/* arp_rcv below verifies the ARP header and verifies the device
	 * is ARP'able.
	 */

	if (in_dev == NULL)
		goto out;

	arp = FUNC9(skb);

	switch (dev_type) {
	default:
		if (arp->ar_pro != FUNC14(ETH_P_IP) ||
		    FUNC14(dev_type) != arp->ar_hrd)
			goto out;
		break;
	case ARPHRD_ETHER:
	case ARPHRD_IEEE802_TR:
	case ARPHRD_FDDI:
	case ARPHRD_IEEE802:
		/*
		 * ETHERNET, Token Ring and Fibre Channel (which are IEEE 802
		 * devices, according to RFC 2625) devices will accept ARP
		 * hardware types of either 1 (Ethernet) or 6 (IEEE 802.2).
		 * This is the case also of FDDI, where the RFC 1390 says that
		 * FDDI devices should accept ARP hardware of (1) Ethernet,
		 * however, to be more robust, we'll accept both 1 (Ethernet)
		 * or 6 (IEEE 802.2)
		 */
		if ((arp->ar_hrd != FUNC14(ARPHRD_ETHER) &&
		     arp->ar_hrd != FUNC14(ARPHRD_IEEE802)) ||
		    arp->ar_pro != FUNC14(ETH_P_IP))
			goto out;
		break;
	case ARPHRD_AX25:
		if (arp->ar_pro != FUNC14(AX25_P_IP) ||
		    arp->ar_hrd != FUNC14(ARPHRD_AX25))
			goto out;
		break;
	case ARPHRD_NETROM:
		if (arp->ar_pro != FUNC14(AX25_P_IP) ||
		    arp->ar_hrd != FUNC14(ARPHRD_NETROM))
			goto out;
		break;
	}

	/* Understand only these message types */

	if (arp->ar_op != FUNC14(ARPOP_REPLY) &&
	    arp->ar_op != FUNC14(ARPOP_REQUEST))
		goto out;

/*
 *	Extract fields
 */
	arp_ptr= (unsigned char *)(arp+1);
	sha	= arp_ptr;
	arp_ptr += dev->addr_len;
	FUNC21(&sip, arp_ptr, 4);
	arp_ptr += 4;
	arp_ptr += dev->addr_len;
	FUNC21(&tip, arp_ptr, 4);
/*
 *	Check for bad requests for 127.x.x.x and requests for multicast
 *	addresses.  If this is one such, delete it.
 */
	if (FUNC20(tip) ||
	    (!FUNC2(in_dev) && FUNC19(tip)))
		goto out;

/*
 *     Special case: We must set Frame Relay source Q.922 address
 */
	if (dev_type == ARPHRD_DLCI)
		sha = dev->broadcast;

/*
 *  Process entry.  The idea here is we want to send a reply if it is a
 *  request for us or if it is a request for someone else that we hold
 *  a proxy for.  We want to add an entry to our cache if it is a reply
 *  to us or if it is a request for our address.
 *  (The assumption for this last is that if someone is requesting our
 *  address, they are probably intending to talk to us, so it saves time
 *  if we cache their address.  Their address is also probably not in
 *  our cache, since ours is not in their cache.)
 *
 *  Putting this another way, we only care about replies if they are to
 *  us, in which case we add them to the cache.  For requests, we care
 *  about those for us and those for our proxies.  We reply to both,
 *  and in the case of requests for us we add the requester to the arp
 *  cache.
 */

	/* Special case: IPv4 duplicate address detection packet (RFC2131) */
	if (sip == 0) {
		if (arp->ar_op == FUNC14(ARPOP_REQUEST) &&
		    FUNC17(net, tip) == RTN_LOCAL &&
		    !FUNC10(in_dev, sip, tip))
			FUNC11(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
				 dev->dev_addr, sha);
		goto out;
	}

	if (arp->ar_op == FUNC14(ARPOP_REQUEST) &&
	    FUNC18(skb, tip, sip, 0, dev) == 0) {

		rt = FUNC27(skb);
		addr_type = rt->rt_type;

		if (addr_type == RTN_LOCAL) {
			int dont_send = 0;

			if (!dont_send)
				dont_send |= FUNC10(in_dev,sip,tip);
			if (!dont_send && FUNC0(in_dev))
				dont_send |= FUNC6(sip,tip,dev);
			if (!dont_send) {
				n = FUNC22(&arp_tbl, sha, &sip, dev);
				if (n) {
					FUNC11(ARPOP_REPLY,ETH_P_ARP,sip,dev,tip,sha,dev->dev_addr,sha);
					FUNC23(n);
				}
			}
			goto out;
		} else if (FUNC1(in_dev)) {
			if (addr_type == RTN_UNICAST  &&
			    (FUNC7(in_dev, dev, rt) ||
			     FUNC8(in_dev, dev, rt, sip, tip) ||
			     (rt->u.dst.dev != dev &&
			      FUNC26(&arp_tbl, net, &tip, dev, 0)))) {
				n = FUNC22(&arp_tbl, sha, &sip, dev);
				if (n)
					FUNC23(n);

				if (FUNC4(skb)->flags & LOCALLY_ENQUEUED ||
				    skb->pkt_type == PACKET_HOST ||
				    in_dev->arp_parms->proxy_delay == 0) {
					FUNC11(ARPOP_REPLY,ETH_P_ARP,sip,dev,tip,sha,dev->dev_addr,sha);
				} else {
					FUNC25(&arp_tbl, in_dev->arp_parms, skb);
					FUNC16(in_dev);
					return 0;
				}
				goto out;
			}
		}
	}

	/* Update our ARP tables */

	n = FUNC5(&arp_tbl, &sip, dev, 0);

	if (FUNC3(FUNC13(dev), ARP_ACCEPT)) {
		/* Unsolicited ARP is not accepted by default.
		   It is possible, that this option should be enabled for some
		   devices (strip is candidate)
		 */
		if (n == NULL &&
		    arp->ar_op == FUNC14(ARPOP_REPLY) &&
		    FUNC17(net, sip) == RTN_UNICAST)
			n = FUNC5(&arp_tbl, &sip, dev, 1);
	}

	if (n) {
		int state = NUD_REACHABLE;
		int override;

		/* If several different ARP replies follows back-to-back,
		   use the FIRST one. It is possible, if several proxy
		   agents are active. Taking the first reply prevents
		   arp trashing and chooses the fastest router.
		 */
		override = FUNC28(jiffies, n->updated + n->parms->locktime);

		/* Broadcast replies and request packets
		   do not assert neighbour reachability.
		 */
		if (arp->ar_op != FUNC14(ARPOP_REPLY) ||
		    skb->pkt_type != PACKET_HOST)
			state = NUD_STALE;
		FUNC24(n, sha, state, override ? NEIGH_UPDATE_F_OVERRIDE : 0);
		FUNC23(n);
	}

out:
	if (in_dev)
		FUNC16(in_dev);
	FUNC12(skb);
	return 0;
}