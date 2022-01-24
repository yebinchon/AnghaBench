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
struct tipc_port {int /*<<< orphan*/  ref; } ;
struct socket {int state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int SHUT_RDWR ; 
#define  SS_CONNECTED 130 
#define  SS_CONNECTING 129 
#define  SS_DISCONNECTING 128 
 int /*<<< orphan*/  TIPC_CONN_SHUTDOWN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_queue_size ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct tipc_port* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct socket *sock, int how)
{
	struct sock *sk = sock->sk;
	struct tipc_port *tport = FUNC12(sk);
	struct sk_buff *buf;
	int res;

	if (how != SHUT_RDWR)
		return -EINVAL;

	FUNC6(sk);

	switch (sock->state) {
	case SS_CONNECTING:
	case SS_CONNECTED:

		/* Disconnect and send a 'FIN+' or 'FIN-' message to peer */
restart:
		buf = FUNC1(&sk->sk_receive_queue);
		if (buf) {
			FUNC2(&tipc_queue_size);
			if (FUNC0(buf)->handle != FUNC7(FUNC4(buf))) {
				FUNC3(buf);
				goto restart;
			}
			FUNC9(tport->ref);
			FUNC10(buf, TIPC_CONN_SHUTDOWN);
		} else {
			FUNC11(tport->ref);
		}

		sock->state = SS_DISCONNECTING;

		/* fall through */

	case SS_DISCONNECTING:

		/* Discard any unreceived messages; wake up sleeping tasks */

		FUNC5(sk);
		if (FUNC13(sk->sk_sleep))
			FUNC14(sk->sk_sleep);
		res = 0;
		break;

	default:
		res = -ENOTCONN;
	}

	FUNC8(sk);
	return res;
}