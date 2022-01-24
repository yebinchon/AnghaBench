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
struct sk_buff {TYPE_1__* dev; } ;
struct net_bridge_port {scalar_t__ state; struct net_bridge* br; } ;
struct net_bridge_mdb_entry {scalar_t__ mglist; } ;
struct net_bridge_fdb_entry {int /*<<< orphan*/  dst; scalar_t__ is_local; } ;
struct net_bridge {TYPE_3__* dev; } ;
struct TYPE_10__ {scalar_t__ mrouters_only; TYPE_3__* brdev; } ;
struct TYPE_9__ {unsigned char* h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_7__ {int /*<<< orphan*/  multicast; } ;
struct TYPE_8__ {int flags; TYPE_2__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  br_port; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ BR_STATE_DISABLED ; 
 scalar_t__ BR_STATE_LEARNING ; 
 int IFF_PROMISC ; 
 struct net_bridge_fdb_entry* FUNC1 (struct net_bridge*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff*) ; 
 struct net_bridge_mdb_entry* FUNC5 (struct net_bridge*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_mdb_entry*,struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct net_bridge*) ; 
 scalar_t__ FUNC8 (struct net_bridge*,struct net_bridge_port*,struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_4__* FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (unsigned char const*) ; 
 scalar_t__ FUNC12 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct net_bridge_port* FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct sk_buff *skb)
{
	const unsigned char *dest = FUNC10(skb)->h_dest;
	struct net_bridge_port *p = FUNC14(skb->dev->br_port);
	struct net_bridge *br;
	struct net_bridge_fdb_entry *dst;
	struct net_bridge_mdb_entry *mdst;
	struct sk_buff *skb2;

	if (!p || p->state == BR_STATE_DISABLED)
		goto drop;

	/* insert into forwarding database after filtering to avoid spoofing */
	br = p->br;
	FUNC2(br, p, FUNC10(skb)->h_source);

	if (!FUNC11(dest) && FUNC12(dest) &&
	    FUNC8(br, p, skb))
		goto drop;

	if (p->state == BR_STATE_LEARNING)
		goto drop;

	FUNC0(skb)->brdev = br->dev;

	/* The packet skb2 goes to the local host (NULL to skip). */
	skb2 = NULL;

	if (br->dev->flags & IFF_PROMISC)
		skb2 = skb;

	dst = NULL;

	if (FUNC11(dest))
		skb2 = skb;
	else if (FUNC12(dest)) {
		mdst = FUNC5(br, skb);
		if (mdst || FUNC0(skb)->mrouters_only) {
			if ((mdst && mdst->mglist) ||
			    FUNC7(br))
				skb2 = skb;
			FUNC6(mdst, skb, skb2);
			skb = NULL;
			if (!skb2)
				goto out;
		} else
			skb2 = skb;

		br->dev->stats.multicast++;
	} else if ((dst = FUNC1(br, dest)) && dst->is_local) {
		skb2 = skb;
		/* Do not forward the packet since it's local. */
		skb = NULL;
	}

	if (skb) {
		if (dst)
			FUNC4(dst->dst, skb, skb2);
		else
			FUNC3(br, skb, skb2);
	}

	if (skb2)
		return FUNC9(skb2);

out:
	return 0;
drop:
	FUNC13(skb);
	goto out;
}