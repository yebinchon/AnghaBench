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
struct udphdr {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC10 (struct net*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct net *net, struct sk_buff *skb,
				    struct udphdr  *uh,
				    __be32 saddr, __be32 daddr,
				    struct udp_table *udptable)
{
	struct sock *sk;
	struct udp_hslot *hslot = &udptable->hash[FUNC8(net, FUNC2(uh->dest))];
	int dif;

	FUNC6(&hslot->lock);
	sk = FUNC3(&hslot->head);
	dif = skb->dev->ifindex;
	sk = FUNC10(net, sk, uh->dest, daddr, uh->source, saddr, dif);
	if (sk) {
		struct sock *sknext = NULL;

		do {
			struct sk_buff *skb1 = skb;

			sknext = FUNC10(net, FUNC4(sk), uh->dest,
						   daddr, uh->source, saddr,
						   dif);
			if (sknext)
				skb1 = FUNC5(skb, GFP_ATOMIC);

			if (skb1) {
				int ret = FUNC9(sk, skb1);
				if (ret > 0)
					/* we should probably re-process instead
					 * of dropping packets here. */
					FUNC1(skb1);
			}
			sk = sknext;
		} while (sknext);
	} else
		FUNC0(skb);
	FUNC7(&hslot->lock);
	return 0;
}