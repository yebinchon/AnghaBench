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
struct tcphdr {int dummy; } ;
struct sk_buff {struct sk_buff* next; scalar_t__ truesize; scalar_t__ len; } ;
struct net_lro_desc {struct sk_buff* last_skb; struct sk_buff* parent; } ;
struct iphdr {int dummy; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int FUNC0 (struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_lro_desc*,struct iphdr*,struct tcphdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct net_lro_desc *lro_desc, struct sk_buff *skb,
			   struct iphdr *iph, struct tcphdr *tcph)
{
	struct sk_buff *parent = lro_desc->parent;
	int tcp_data_len = FUNC0(iph, tcph);

	FUNC1(lro_desc, iph, tcph, tcp_data_len);

	FUNC2(skb, (skb->len - tcp_data_len));
	parent->truesize += skb->truesize;

	if (lro_desc->last_skb)
		lro_desc->last_skb->next = skb;
	else
		FUNC3(parent)->frag_list = skb;

	lro_desc->last_skb = skb;
}