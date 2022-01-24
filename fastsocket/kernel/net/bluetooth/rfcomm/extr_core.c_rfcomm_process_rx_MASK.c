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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct rfcomm_session {int /*<<< orphan*/  initiator; int /*<<< orphan*/  state; struct socket* sock; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_session*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct rfcomm_session *s)
{
	struct socket *sock = s->sock;
	struct sock *sk = sock->sk;
	struct sk_buff *skb;

	FUNC0("session %p state %ld qlen %d", s, s->state, FUNC6(&sk->sk_receive_queue));

	/* Get data directly from socket receive queue without copying it. */
	while ((skb = FUNC4(&sk->sk_receive_queue))) {
		FUNC5(skb);
		FUNC1(s, skb);
	}

	if (sk->sk_state == BT_CLOSED) {
		if (!s->initiator)
			FUNC3(s);

		FUNC2(s, sk->sk_err);
	}
}