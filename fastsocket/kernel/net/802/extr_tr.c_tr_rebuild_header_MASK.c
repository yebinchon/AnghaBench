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
struct trllc {scalar_t__ ethertype; } ;
struct trh_hdr {int /*<<< orphan*/  daddr; } ;
struct sk_buff {struct net_device* dev; scalar_t__ data; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct trh_hdr*,struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct trh_hdr *trh=(struct trh_hdr *)skb->data;
	struct trllc *trllc=(struct trllc *)(skb->data+sizeof(struct trh_hdr));
	struct net_device *dev = skb->dev;

	/*
	 *	FIXME: We don't yet support IPv6 over token rings
	 */

	if(trllc->ethertype != FUNC1(ETH_P_IP)) {
		FUNC3("tr_rebuild_header: Don't know how to resolve type %04X addresses ?\n", FUNC2(trllc->ethertype));
		return 0;
	}

#ifdef CONFIG_INET
	if(arp_find(trh->daddr, skb)) {
			return 1;
	}
	else
#endif
	{
		FUNC4(skb,trh,dev);
		return 0;
	}
}