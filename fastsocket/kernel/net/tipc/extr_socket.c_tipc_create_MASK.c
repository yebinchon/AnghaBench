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
struct tipc_port {int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
struct socket {int type; int /*<<< orphan*/  state; struct proto_ops const* ops; } ;
struct sock {int /*<<< orphan*/  sk_backlog_rcv; int /*<<< orphan*/  sk_rcvtimeo; } ;
struct proto_ops {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  socket_state ;
struct TYPE_2__ {struct tipc_port* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_TIPC ; 
 int /*<<< orphan*/  CONN_TIMEOUT_DEFAULT ; 
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SOCK_DGRAM 131 
#define  SOCK_RDM 130 
#define  SOCK_SEQPACKET 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  SS_READY ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TIPC_LOW_IMPORTANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backlog_rcv ; 
 int /*<<< orphan*/  dispatch ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct proto_ops msg_ops ; 
 struct proto_ops packet_ops ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct proto_ops stream_ops ; 
 struct tipc_port* FUNC6 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_proto ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  tipc_user_count ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  wakeupdispatch ; 

__attribute__((used)) static int FUNC11(struct net *net, struct socket *sock, int protocol,
		       int kern)
{
	const struct proto_ops *ops;
	socket_state state;
	struct sock *sk;
	struct tipc_port *tp_ptr;

	/* Validate arguments */

	if (net != &init_net)
		return -EAFNOSUPPORT;

	if (FUNC10(protocol != 0))
		return -EPROTONOSUPPORT;

	switch (sock->type) {
	case SOCK_STREAM:
		ops = &stream_ops;
		state = SS_UNCONNECTED;
		break;
	case SOCK_SEQPACKET:
		ops = &packet_ops;
		state = SS_UNCONNECTED;
		break;
	case SOCK_DGRAM:
	case SOCK_RDM:
		ops = &msg_ops;
		state = SS_READY;
		break;
	default:
		return -EPROTOTYPE;
	}

	/* Allocate socket's protocol area */

	sk = FUNC2(net, AF_TIPC, GFP_KERNEL, &tipc_proto);
	if (sk == NULL)
		return -ENOMEM;

	/* Allocate TIPC port for socket to use */

	tp_ptr = FUNC6(sk, &dispatch, &wakeupdispatch,
				     TIPC_LOW_IMPORTANCE);
	if (FUNC10(!tp_ptr)) {
		FUNC3(sk);
		return -ENOMEM;
	}

	/* Finish initializing socket data structures */

	sock->ops = ops;
	sock->state = state;

	FUNC4(sock, sk);
	sk->sk_rcvtimeo = FUNC1(CONN_TIMEOUT_DEFAULT);
	sk->sk_backlog_rcv = backlog_rcv;
	FUNC9(sk)->p = tp_ptr;

	FUNC5(tp_ptr->lock);

	if (sock->state == SS_READY) {
		FUNC8(tp_ptr->ref, 1);
		if (sock->type == SOCK_DGRAM)
			FUNC7(tp_ptr->ref, 1);
	}

	FUNC0(&tipc_user_count);
	return 0;
}