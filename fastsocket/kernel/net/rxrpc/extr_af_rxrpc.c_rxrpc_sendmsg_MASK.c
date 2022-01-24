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
struct socket {int /*<<< orphan*/  sk; } ;
struct rxrpc_transport {int /*<<< orphan*/  usage; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; struct rxrpc_transport* trans; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int EISCONN ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rxrpc_transport*) ; 
 int MSG_OOB ; 
 int FUNC1 (struct rxrpc_transport*) ; 
#define  RXRPC_CLIENT_BOUND 131 
#define  RXRPC_CLIENT_CONNECTED 130 
#define  RXRPC_SERVER_BOUND 129 
#define  RXRPC_SERVER_LISTENING 128 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct kiocb*,struct rxrpc_sock*,struct rxrpc_transport*,struct msghdr*,size_t) ; 
 struct rxrpc_transport* FUNC8 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_transport*) ; 
 int FUNC10 (struct kiocb*,struct rxrpc_sock*,struct msghdr*,size_t) ; 
 struct rxrpc_sock* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rxrpc_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct kiocb *iocb, struct socket *sock,
			 struct msghdr *m, size_t len)
{
	struct rxrpc_transport *trans;
	struct rxrpc_sock *rx = FUNC11(sock->sk);
	int ret;

	FUNC2(",{%d},,%zu", rx->sk.sk_state, len);

	if (m->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (m->msg_name) {
		ret = FUNC12(rx, m->msg_name, m->msg_namelen);
		if (ret < 0) {
			FUNC3(" = %d [bad addr]", ret);
			return ret;
		}
	}

	trans = NULL;
	FUNC5(&rx->sk);

	if (m->msg_name) {
		ret = -EISCONN;
		trans = FUNC8(sock, m->msg_name,
						m->msg_namelen, 0, GFP_KERNEL);
		if (FUNC0(trans)) {
			ret = FUNC1(trans);
			trans = NULL;
			goto out;
		}
	} else {
		trans = rx->trans;
		if (trans)
			FUNC4(&trans->usage);
	}

	switch (rx->sk.sk_state) {
	case RXRPC_SERVER_LISTENING:
		if (!m->msg_name) {
			ret = FUNC10(iocb, rx, m, len);
			break;
		}
	case RXRPC_SERVER_BOUND:
	case RXRPC_CLIENT_BOUND:
		if (!m->msg_name) {
			ret = -ENOTCONN;
			break;
		}
	case RXRPC_CLIENT_CONNECTED:
		ret = FUNC7(iocb, rx, trans, m, len);
		break;
	default:
		ret = -ENOTCONN;
		break;
	}

out:
	FUNC6(&rx->sk);
	if (trans)
		FUNC9(trans);
	FUNC3(" = %d", ret);
	return ret;
}