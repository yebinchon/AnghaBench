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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_sock {TYPE_1__ peer_name; struct tipc_port* p; } ;
struct tipc_port {int /*<<< orphan*/  conn_instance; int /*<<< orphan*/  conn_type; int /*<<< orphan*/  ref; } ;
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/ * sk_sleep; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_LISTENING ; 
 scalar_t__ SS_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC22 (struct sock*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC24(struct socket *sock, struct socket *new_sock, int flags)
{
	struct sock *sk = sock->sk;
	struct sk_buff *buf;
	int res;

	FUNC4(sk);

	if (sock->state == SS_READY) {
		res = -EOPNOTSUPP;
		goto exit;
	}
	if (sock->state != SS_LISTENING) {
		res = -EINVAL;
		goto exit;
	}

	while (FUNC17(&sk->sk_receive_queue)) {
		if (flags & O_NONBLOCK) {
			res = -EWOULDBLOCK;
			goto exit;
		}
		FUNC14(sk);
		res = FUNC23(*sk->sk_sleep,
				(!FUNC17(&sk->sk_receive_queue)));
		FUNC4(sk);
		if (res)
			goto exit;
	}

	buf = FUNC16(&sk->sk_receive_queue);

	res = FUNC20(FUNC18(sock->sk), new_sock, 0, 0);
	if (!res) {
		struct sock *new_sk = new_sock->sk;
		struct tipc_sock *new_tsock = FUNC22(new_sk);
		struct tipc_port *new_tport = new_tsock->p;
		u32 new_ref = new_tport->ref;
		struct tipc_msg *msg = FUNC3(buf);

		FUNC4(new_sk);

		/*
		 * Reject any stray messages received by new socket
		 * before the socket lock was taken (very, very unlikely)
		 */

		FUNC13(new_sk);

		/* Connect new socket to it's peer */

		new_tsock->peer_name.ref = FUNC12(msg);
		new_tsock->peer_name.node = FUNC11(msg);
		FUNC19(new_ref, &new_tsock->peer_name);
		new_sock->state = SS_CONNECTED;

		FUNC21(new_ref, FUNC7(msg));
		if (FUNC8(msg)) {
			new_tport->conn_type = FUNC10(msg);
			new_tport->conn_instance = FUNC9(msg);
		}

		/*
		 * Respond to 'SYN-' by discarding it & returning 'ACK'-.
		 * Respond to 'SYN+' by queuing it on new socket.
		 */

		FUNC6(msg,"<ACC<: ");
		if (!FUNC5(msg)) {
			struct msghdr m = {NULL,};

			FUNC2(sk);
			FUNC15(NULL, new_sock, &m, 0);
		} else {
			FUNC0(&sk->sk_receive_queue);
			FUNC1(&new_sk->sk_receive_queue, buf);
		}
		FUNC14(new_sk);
	}
exit:
	FUNC14(sk);
	return res;
}