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
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct l2cap_chan_list {int /*<<< orphan*/  lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {struct sock* next_c; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct l2cap_conn *conn)
{
	struct l2cap_chan_list *l = &conn->chan_list;
	struct sock *sk;

	FUNC0("conn %p", conn);

	FUNC6(&l->lock);

	for (sk = l->head; sk; sk = FUNC4(sk)->next_c) {
		FUNC1(sk);

		if (sk->sk_type != SOCK_SEQPACKET) {
			FUNC5(sk);
			sk->sk_state = BT_CONNECTED;
			sk->sk_state_change(sk);
		} else if (sk->sk_state == BT_CONNECT)
			FUNC3(sk);

		FUNC2(sk);
	}

	FUNC7(&l->lock);
}