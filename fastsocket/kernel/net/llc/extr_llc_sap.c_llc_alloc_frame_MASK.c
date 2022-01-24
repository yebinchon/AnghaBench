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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct net_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ LLC_PDU_TYPE_U ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct sock*) ; 

struct sk_buff *FUNC8(struct sock *sk, struct net_device *dev,
				u8 type, u32 data_size)
{
	int hlen = type == LLC_PDU_TYPE_U ? 3 : 4;
	struct sk_buff *skb;

	hlen += FUNC2(dev->type);
	skb = FUNC0(hlen + data_size, GFP_ATOMIC);

	if (skb) {
		FUNC4(skb);
		FUNC3(skb, hlen);
		FUNC5(skb);
		FUNC6(skb);
		skb->protocol = FUNC1(ETH_P_802_2);
		skb->dev      = dev;
		if (sk != NULL)
			FUNC7(skb, sk);
	}
	return skb;
}