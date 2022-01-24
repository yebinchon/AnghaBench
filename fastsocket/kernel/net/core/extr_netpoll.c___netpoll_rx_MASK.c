#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct udphdr {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; int /*<<< orphan*/  len; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ pkt_type; int len; scalar_t__ data; TYPE_1__* dev; } ;
struct netpoll_info {int /*<<< orphan*/  arp_tx; struct netpoll* rx_np; } ;
struct netpoll {scalar_t__ local_ip; scalar_t__ remote_ip; int local_port; int /*<<< orphan*/  (* rx_hook ) (struct netpoll*,int,char*,int) ;} ;
struct iphdr {int ihl; int version; scalar_t__ protocol; scalar_t__ saddr; scalar_t__ daddr; int /*<<< orphan*/  tot_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_proto; } ;
struct TYPE_3__ {scalar_t__ type; struct netpoll_info* npinfo; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int ETH_P_IP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ PACKET_OTHERHOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct udphdr*,int,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct netpoll*,int,char*,int) ; 
 int /*<<< orphan*/  trapped ; 

int FUNC12(struct sk_buff *skb)
{
	int proto, len, ulen;
	struct iphdr *iph;
	struct udphdr *uh;
	struct netpoll_info *npi = skb->dev->npinfo;
	struct netpoll *np = npi->rx_np;

	if (!np)
		goto out;
	if (skb->dev->type != ARPHRD_ETHER)
		goto out;

	/* check if netpoll clients need ARP */
	if (skb->protocol == FUNC3(ETH_P_ARP) &&
	    FUNC0(&trapped)) {
		FUNC9(&npi->arp_tx, skb);
		return 1;
	}

	proto = FUNC6(FUNC2(skb)->h_proto);
	if (proto != ETH_P_IP)
		goto out;
	if (skb->pkt_type == PACKET_OTHERHOST)
		goto out;
	if (FUNC10(skb))
		goto out;

	iph = (struct iphdr *)skb->data;
	if (!FUNC7(skb, sizeof(struct iphdr)))
		goto out;
	if (iph->ihl < 5 || iph->version != 4)
		goto out;
	if (!FUNC7(skb, iph->ihl*4))
		goto out;
	if (FUNC4((u8 *)iph, iph->ihl) != 0)
		goto out;

	len = FUNC6(iph->tot_len);
	if (skb->len < len || len < iph->ihl*4)
		goto out;

	/*
	 * Our transport medium may have padded the buffer out.
	 * Now We trim to the true length of the frame.
	 */
	if (FUNC8(skb, len))
		goto out;

	if (iph->protocol != IPPROTO_UDP)
		goto out;

	len -= iph->ihl*4;
	uh = (struct udphdr *)(((char *)iph) + iph->ihl*4);
	ulen = FUNC6(uh->len);

	if (ulen != len)
		goto out;
	if (FUNC1(skb, uh, ulen, iph->saddr, iph->daddr))
		goto out;
	if (np->local_ip && np->local_ip != iph->daddr)
		goto out;
	if (np->remote_ip && np->remote_ip != iph->saddr)
		goto out;
	if (np->local_port && np->local_port != FUNC6(uh->dest))
		goto out;

	np->rx_hook(np, FUNC6(uh->source),
		    (char *)(uh+1),
		    ulen - sizeof(struct udphdr));

	FUNC5(skb);
	return 1;

out:
	if (FUNC0(&trapped)) {
		FUNC5(skb);
		return 1;
	}

	return 0;
}