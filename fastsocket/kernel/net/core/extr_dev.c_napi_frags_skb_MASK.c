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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct napi_struct {struct sk_buff* skb; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*,struct sk_buff*) ; 
 struct ethhdr* FUNC1 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int) ; 
 struct ethhdr* FUNC3 (struct sk_buff*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

struct sk_buff *FUNC9(struct napi_struct *napi)
{
	struct sk_buff *skb = napi->skb;
	struct ethhdr *eth;
	unsigned int hlen;
	unsigned int off;

	napi->skb = NULL;

	FUNC7(skb);
	FUNC6(skb);

	off = FUNC4(skb);
	hlen = off + sizeof(*eth);
	eth = FUNC1(skb, off);
	if (FUNC2(skb, hlen)) {
		eth = FUNC3(skb, hlen, off);
		if (FUNC8(!eth)) {
			FUNC0(napi, skb);
			skb = NULL;
			goto out;
		}
	}

	FUNC5(skb, sizeof(*eth));

	/*
	 * This works because the only protocols we care about don't require
	 * special handling.  We'll fix it up properly at the end.
	 */
	skb->protocol = eth->h_proto;

out:
	return skb;
}