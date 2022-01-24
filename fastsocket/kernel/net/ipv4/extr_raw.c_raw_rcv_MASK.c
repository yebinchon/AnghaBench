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
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	if (!FUNC6(sk, XFRM_POLICY_IN, skb)) {
		FUNC0(&sk->sk_drops);
		FUNC1(skb);
		return NET_RX_DROP;
	}
	FUNC2(skb);

	FUNC5(skb, skb->data - FUNC4(skb));

	FUNC3(sk, skb);
	return 0;
}