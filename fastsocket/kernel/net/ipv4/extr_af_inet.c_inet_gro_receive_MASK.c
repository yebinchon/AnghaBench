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
typedef  int /*<<< orphan*/  u32 ;
typedef  unsigned int u16 ;
struct sk_buff {struct sk_buff* next; } ;
struct net_protocol {struct sk_buff** (* gro_receive ) (struct sk_buff**,struct sk_buff*) ;} ;
struct net_offload {struct sk_buff** (* gro_receive ) (struct sk_buff**,struct sk_buff*) ;} ;
struct iphdr {int protocol; int tos; int saddr; int daddr; unsigned int ttl; int /*<<< orphan*/  id; int /*<<< orphan*/  ihl; } ;
struct TYPE_2__ {unsigned int flush; scalar_t__ count; scalar_t__ same_flow; } ;

/* Variables and functions */
 unsigned int IP_DF ; 
 int MAX_INET_PROTOS ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/ * inet_offloads ; 
 int /*<<< orphan*/ * inet_protos ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct iphdr* FUNC8 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC9 (struct sk_buff*,unsigned int) ; 
 struct iphdr* FUNC10 (struct sk_buff*,unsigned int,unsigned int) ; 
 unsigned int FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,unsigned int) ; 
 struct sk_buff** FUNC15 (struct sk_buff**,struct sk_buff*) ; 
 struct sk_buff** FUNC16 (struct sk_buff**,struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct sk_buff **FUNC18(struct sk_buff **head,
					 struct sk_buff *skb)
{
	const struct net_offload *ops;
	const struct net_protocol *proto_ops = NULL;
	struct sk_buff **pp = NULL;
	struct sk_buff *p;
	struct iphdr *iph;
	unsigned int hlen;
	unsigned int off;
	unsigned int id;
	int flush = 1;
	int proto;

	off = FUNC12(skb);
	hlen = off + sizeof(*iph);
	iph = FUNC8(skb, off);
	if (FUNC9(skb, hlen)) {
		iph = FUNC10(skb, hlen, off);
		if (FUNC17(!iph))
			goto out;
	}

	proto = iph->protocol & (MAX_INET_PROTOS - 1);

	FUNC6();
	ops = FUNC5(inet_offloads[proto]);
	if (!ops || !ops->gro_receive) {
		/* Try the protocols array */
		proto_ops = FUNC5(inet_protos[proto]);
		if (!proto_ops || !proto_ops->gro_receive)
			goto out_unlock;

		ops = NULL;
	}

	if (*(u8 *)iph != 0x45)
		goto out_unlock;

	if (FUNC17(FUNC1((u8 *)iph, iph->ihl)))
		goto out_unlock;

	id = FUNC3(*(u32 *)&iph->id);
	flush = (u16)((FUNC3(*(u32 *)iph) ^ FUNC11(skb)) | (id ^ IP_DF));
	id >>= 16;

	for (p = *head; p; p = p->next) {
		struct iphdr *iph2;

		if (!FUNC0(p)->same_flow)
			continue;

		iph2 = FUNC2(p);

		if ((iph->protocol ^ iph2->protocol) |
		    (iph->tos ^ iph2->tos) |
		    (iph->saddr ^ iph2->saddr) |
		    (iph->daddr ^ iph2->daddr)) {
			FUNC0(p)->same_flow = 0;
			continue;
		}

		/* All fields must match except length and checksum. */
		FUNC0(p)->flush |=
			(iph->ttl ^ iph2->ttl) |
			((u16)(FUNC4(iph2->id) + FUNC0(p)->count) ^ id);

		FUNC0(p)->flush |= flush;
	}

	FUNC0(skb)->flush |= flush;
	FUNC13(skb, sizeof(*iph));
	FUNC14(skb, FUNC12(skb));

	if (ops)
		pp = ops->gro_receive(head, skb);
	else
		pp = proto_ops->gro_receive(head, skb);

out_unlock:
	FUNC7();

out:
	FUNC0(skb)->flush |= flush;

	return pp;
}