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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct netlink_sock {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct netlink_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(struct sock *sk,
					    struct sk_buff *skb)
{
	struct netlink_sock *nlk = FUNC1(sk);

	if (FUNC0(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf &&
	    !FUNC5(0, &nlk->state)) {
		FUNC3(skb, sk);
		FUNC2(&sk->sk_receive_queue, skb);
		sk->sk_data_ready(sk, skb->len);
		return FUNC0(&sk->sk_rmem_alloc) > sk->sk_rcvbuf;
	}
	return -1;
}