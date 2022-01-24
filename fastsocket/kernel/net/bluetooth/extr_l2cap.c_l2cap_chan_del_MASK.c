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
struct sock {int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_state; } ;
struct l2cap_conn {int /*<<< orphan*/  hcon; int /*<<< orphan*/  chan_list; } ;
struct TYPE_4__ {struct sock* parent; } ;
struct TYPE_3__ {struct l2cap_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, int err)
{
	struct l2cap_conn *conn = FUNC5(sk)->conn;
	struct sock *parent = FUNC2(sk)->parent;

	FUNC6(sk);

	FUNC0("sk %p, conn %p, err %d", sk, conn, err);

	if (conn) {
		/* Unlink from channel list */
		FUNC4(&conn->chan_list, sk);
		FUNC5(sk)->conn = NULL;
		FUNC3(conn->hcon);
	}

	sk->sk_state = BT_CLOSED;
	FUNC7(sk, SOCK_ZAPPED);

	if (err)
		sk->sk_err = err;

	if (parent) {
		FUNC1(sk);
		parent->sk_data_ready(parent, 0);
	} else
		sk->sk_state_change(sk);
}