#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int /*<<< orphan*/ * local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
#define  RXRPC_CLIENT_BOUND 131 
#define  RXRPC_CLIENT_CONNECTED 130 
#define  RXRPC_SERVER_BOUND 129 
 int RXRPC_SERVER_LISTENING ; 
#define  RXRPC_UNCONNECTED 128 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct rxrpc_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	struct rxrpc_sock *rx = FUNC5(sk);
	int ret;

	FUNC1("%p,%d", rx, backlog);

	FUNC3(&rx->sk);

	switch (rx->sk.sk_state) {
	case RXRPC_UNCONNECTED:
		ret = -EADDRNOTAVAIL;
		break;
	case RXRPC_CLIENT_BOUND:
	case RXRPC_CLIENT_CONNECTED:
	default:
		ret = -EBUSY;
		break;
	case RXRPC_SERVER_BOUND:
		FUNC0(rx->local != NULL);
		sk->sk_max_ack_backlog = backlog;
		rx->sk.sk_state = RXRPC_SERVER_LISTENING;
		ret = 0;
		break;
	}

	FUNC4(&rx->sk);
	FUNC2(" = %d", ret);
	return ret;
}