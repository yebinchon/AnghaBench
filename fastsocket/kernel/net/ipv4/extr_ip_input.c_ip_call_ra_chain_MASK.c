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
typedef  scalar_t__ u8 ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {scalar_t__ ifindex; } ;
struct ip_ra_chain {struct sock* sk; struct ip_ra_chain* next; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {scalar_t__ protocol; int frag_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IP_DEFRAG_CALL_RA_CHAIN ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct ip_ra_chain* ip_ra_chain ; 
 int /*<<< orphan*/  ip_ra_lock ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sock*) ; 

int FUNC10(struct sk_buff *skb)
{
	struct ip_ra_chain *ra;
	u8 protocol = FUNC4(skb)->protocol;
	struct sock *last = NULL;
	struct net_device *dev = skb->dev;

	FUNC6(&ip_ra_lock);
	for (ra = ip_ra_chain; ra; ra = ra->next) {
		struct sock *sk = ra->sk;

		/* If socket is bound to an interface, only report
		 * the packet if it came  from that interface.
		 */
		if (sk && FUNC2(sk)->num == protocol &&
		    (!sk->sk_bound_dev_if ||
		     sk->sk_bound_dev_if == dev->ifindex) &&
		    FUNC9(sk) == FUNC0(dev)) {
			if (FUNC4(skb)->frag_off & FUNC1(IP_MF | IP_OFFSET)) {
				if (FUNC3(skb, IP_DEFRAG_CALL_RA_CHAIN)) {
					FUNC7(&ip_ra_lock);
					return 1;
				}
			}
			if (last) {
				struct sk_buff *skb2 = FUNC8(skb, GFP_ATOMIC);
				if (skb2)
					FUNC5(last, skb2);
			}
			last = sk;
		}
	}

	if (last) {
		FUNC5(last, skb);
		FUNC7(&ip_ra_lock);
		return 1;
	}
	FUNC7(&ip_ra_lock);
	return 0;
}