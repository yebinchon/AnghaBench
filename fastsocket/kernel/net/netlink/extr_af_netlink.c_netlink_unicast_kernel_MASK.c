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
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct netlink_sock {int /*<<< orphan*/  (* netlink_rcv ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct netlink_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	int ret;
	struct netlink_sock *nlk = FUNC2(sk);

	ret = -ECONNREFUSED;
	if (nlk->netlink_rcv != NULL) {
		ret = skb->len;
		FUNC3(skb, sk);
		nlk->netlink_rcv(skb);
		FUNC0(skb);
	} else {
		FUNC1(skb);
	}
	FUNC4(sk);
	return ret;
}