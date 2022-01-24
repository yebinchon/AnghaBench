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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct dn_skb_cb {int xmit_count; int /*<<< orphan*/  stamp; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned FUNC3(struct sk_buff *skb,
					     gfp_t gfp)
{
	struct dn_skb_cb *cb = FUNC0(skb);
	struct sk_buff *skb2;
	int ret = 0;

	if ((skb2 = FUNC2(skb, gfp)) != NULL) {
		ret = cb->xmit_count;
		cb->xmit_count++;
		cb->stamp = jiffies;
		skb2->sk = skb->sk;
		FUNC1(skb2);
	}

	return ret;
}