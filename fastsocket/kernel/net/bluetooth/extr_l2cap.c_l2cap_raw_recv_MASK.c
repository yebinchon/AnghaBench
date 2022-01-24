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
struct sock {scalar_t__ sk_type; } ;
struct sk_buff {struct sock* sk; } ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {struct sock* next_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct l2cap_chan_list *l = &conn->chan_list;
	struct sk_buff *nskb;
	struct sock *sk;

	FUNC0("conn %p", conn);

	FUNC3(&l->lock);
	for (sk = l->head; sk; sk = FUNC2(sk)->next_c) {
		if (sk->sk_type != SOCK_RAW)
			continue;

		/* Don't send frame to the socket it came from */
		if (skb->sk == sk)
			continue;
		nskb = FUNC5(skb, GFP_ATOMIC);
		if (!nskb)
			continue;

		if (FUNC6(sk, nskb))
			FUNC1(nskb);
	}
	FUNC4(&l->lock);
}