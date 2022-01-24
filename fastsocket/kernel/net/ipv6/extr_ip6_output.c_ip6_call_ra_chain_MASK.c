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
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct ip6_ra_chain {int sel; struct sock* sk; struct ip6_ra_chain* next; } ;
struct TYPE_2__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ip6_ra_chain* ip6_ra_chain ; 
 int /*<<< orphan*/  ip6_ra_lock ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, int sel)
{
	struct ip6_ra_chain *ra;
	struct sock *last = NULL;

	FUNC1(&ip6_ra_lock);
	for (ra = ip6_ra_chain; ra; ra = ra->next) {
		struct sock *sk = ra->sk;
		if (sk && ra->sel == sel &&
		    (!sk->sk_bound_dev_if ||
		     sk->sk_bound_dev_if == skb->dev->ifindex)) {
			if (last) {
				struct sk_buff *skb2 = FUNC3(skb, GFP_ATOMIC);
				if (skb2)
					FUNC0(last, skb2);
			}
			last = sk;
		}
	}

	if (last) {
		FUNC0(last, skb);
		FUNC2(&ip6_ra_lock);
		return 1;
	}
	FUNC2(&ip6_ra_lock);
	return 0;
}