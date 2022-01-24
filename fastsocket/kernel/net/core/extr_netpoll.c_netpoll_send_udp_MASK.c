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
struct udphdr {int source; int dest; int len; scalar_t__ check; } ;
struct sk_buff {int len; int protocol; TYPE_1__* dev; } ;
struct netpoll {int local_port; int remote_port; int local_ip; int remote_ip; TYPE_1__* dev; int /*<<< orphan*/  remote_mac; } ;
struct iphdr {unsigned char tot_len; int ttl; unsigned char saddr; unsigned char daddr; int /*<<< orphan*/  ihl; scalar_t__ check; int /*<<< orphan*/  protocol; scalar_t__ frag_off; scalar_t__ id; scalar_t__ tos; } ;
struct ethhdr {int h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int ETH_HLEN ; 
 int ETH_P_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct udphdr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct netpoll*,int,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netpoll*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,char const*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct udphdr* FUNC14 (struct sk_buff*) ; 

void FUNC15(struct netpoll *np, const char *msg, int len)
{
	int total_len, eth_len, ip_len, udp_len;
	struct sk_buff *skb;
	struct udphdr *udph;
	struct iphdr *iph;
	struct ethhdr *eth;

	udp_len = len + sizeof(*udph);
	ip_len = eth_len = udp_len + sizeof(*iph);
	total_len = eth_len + ETH_HLEN + NET_IP_ALIGN;

	skb = FUNC2(np, total_len, total_len - len);
	if (!skb)
		return;

	FUNC9(skb, msg, len);
	skb->len += len;

	FUNC10(skb, sizeof(*udph));
	FUNC13(skb);
	udph = FUNC14(skb);
	udph->source = FUNC3(np->local_port);
	udph->dest = FUNC3(np->remote_port);
	udph->len = FUNC3(udp_len);
	udph->check = 0;
	udph->check = FUNC1(np->local_ip,
					np->remote_ip,
					udp_len, IPPROTO_UDP,
					FUNC0(udph, udp_len, 0));
	if (udph->check == 0)
		udph->check = CSUM_MANGLED_0;

	FUNC10(skb, sizeof(*iph));
	FUNC12(skb);
	iph = FUNC5(skb);

	/* iph->version = 4; iph->ihl = 5; */
	FUNC8(0x45, (unsigned char *)iph);
	iph->tos      = 0;
	FUNC8(FUNC3(ip_len), &(iph->tot_len));
	iph->id       = 0;
	iph->frag_off = 0;
	iph->ttl      = 64;
	iph->protocol = IPPROTO_UDP;
	iph->check    = 0;
	FUNC8(np->local_ip, &(iph->saddr));
	FUNC8(np->remote_ip, &(iph->daddr));
	iph->check    = FUNC4((unsigned char *)iph, iph->ihl);

	eth = (struct ethhdr *) FUNC10(skb, ETH_HLEN);
	FUNC11(skb);
	skb->protocol = eth->h_proto = FUNC3(ETH_P_IP);
	FUNC6(eth->h_source, np->dev->dev_addr, ETH_ALEN);
	FUNC6(eth->h_dest, np->remote_mac, ETH_ALEN);

	skb->dev = np->dev;

	FUNC7(np, skb);
}