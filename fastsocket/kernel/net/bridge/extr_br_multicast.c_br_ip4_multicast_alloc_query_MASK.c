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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  len; void* protocol; } ;
struct net_bridge {int multicast_last_member_interval; int multicast_query_response_interval; TYPE_1__* dev; } ;
struct iphdr {int version; int ihl; int tos; int ttl; int /*<<< orphan*/  daddr; scalar_t__ saddr; int /*<<< orphan*/  protocol; void* frag_off; scalar_t__ id; void* tot_len; } ;
struct igmphdr {int code; scalar_t__ csum; scalar_t__ group; int /*<<< orphan*/  type; } ;
struct ethhdr {int* h_dest; void* h_proto; int /*<<< orphan*/  h_source; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ETH_P_IP ; 
 int HZ ; 
 int /*<<< orphan*/  IGMP_HOST_MEMBERSHIP_QUERY ; 
 int IGMP_TIMER_SCALE ; 
 int /*<<< orphan*/  INADDR_ALLHOSTS_GROUP ; 
 int IPOPT_RA ; 
 int /*<<< orphan*/  IPPROTO_IGMP ; 
 int IP_DF ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 struct ethhdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 struct igmphdr* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (void*,int) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC14(struct net_bridge *br,
						    __be32 group)
{
	struct sk_buff *skb;
	struct igmphdr *ih;
	struct ethhdr *eth;
	struct iphdr *iph;

	skb = FUNC9(br->dev, sizeof(*eth) + sizeof(*iph) +
						 sizeof(*ih) + 4);
	if (!skb)
		goto out;

	skb->protocol = FUNC3(ETH_P_IP);

	FUNC11(skb);
	eth = FUNC1(skb);

	FUNC8(eth->h_source, br->dev->dev_addr, 6);
	eth->h_dest[0] = 1;
	eth->h_dest[1] = 0;
	eth->h_dest[2] = 0x5e;
	eth->h_dest[3] = 0;
	eth->h_dest[4] = 0;
	eth->h_dest[5] = 1;
	eth->h_proto = FUNC3(ETH_P_IP);
	FUNC10(skb, sizeof(*eth));

	FUNC12(skb, skb->len);
	iph = FUNC6(skb);

	iph->version = 4;
	iph->ihl = 6;
	iph->tos = 0xc0;
	iph->tot_len = FUNC3(sizeof(*iph) + sizeof(*ih) + 4);
	iph->id = 0;
	iph->frag_off = FUNC3(IP_DF);
	iph->ttl = 1;
	iph->protocol = IPPROTO_IGMP;
	iph->saddr = 0;
	iph->daddr = FUNC2(INADDR_ALLHOSTS_GROUP);
	((u8 *)&iph[1])[0] = IPOPT_RA;
	((u8 *)&iph[1])[1] = 4;
	((u8 *)&iph[1])[2] = 0;
	((u8 *)&iph[1])[3] = 0;
	FUNC7(iph);
	FUNC10(skb, 24);

	FUNC13(skb, skb->len);
	ih = FUNC4(skb);
	ih->type = IGMP_HOST_MEMBERSHIP_QUERY;
	ih->code = (group ? br->multicast_last_member_interval :
			    br->multicast_query_response_interval) /
		   (HZ / IGMP_TIMER_SCALE);
	ih->group = group;
	ih->csum = 0;
	ih->csum = FUNC5((void *)ih, sizeof(struct igmphdr));
	FUNC10(skb, sizeof(*ih));

	FUNC0(skb, sizeof(*eth));

out:
	return skb;
}