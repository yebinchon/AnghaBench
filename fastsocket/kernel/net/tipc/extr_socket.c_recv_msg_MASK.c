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
typedef  scalar_t__ u32 ;
struct tipc_port {scalar_t__ conn_unacked; int /*<<< orphan*/  ref; } ;
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/ * sk_sleep; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_control; TYPE_1__* msg_iov; int /*<<< orphan*/  msg_flags; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int EWOULDBLOCK ; 
 int MSG_DONTWAIT ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_DISCONNECTING ; 
 scalar_t__ SS_READY ; 
 scalar_t__ SS_UNCONNECTED ; 
 scalar_t__ TIPC_CONN_SHUTDOWN ; 
 scalar_t__ TIPC_FLOW_CONTROL_WIN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (struct msghdr*,struct tipc_msg*,struct tipc_port*) ; 
 int FUNC2 (struct socket*,struct tipc_msg*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 unsigned int FUNC8 (struct tipc_msg*) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct msghdr*,struct tipc_msg*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct tipc_port* FUNC15 (struct sock*) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct kiocb *iocb, struct socket *sock,
		    struct msghdr *m, size_t buf_len, int flags)
{
	struct sock *sk = sock->sk;
	struct tipc_port *tport = FUNC15(sk);
	struct sk_buff *buf;
	struct tipc_msg *msg;
	unsigned int sz;
	u32 err;
	int res;

	/* Catch invalid receive requests */

	if (m->msg_iovlen != 1)
		return -EOPNOTSUPP;   /* Don't do multiple iovec entries yet */

	if (FUNC16(!buf_len))
		return -EINVAL;

	m->msg_namelen = 0;
	FUNC6(sk);

	if (FUNC16(sock->state == SS_UNCONNECTED)) {
		res = -ENOTCONN;
		goto exit;
	}

restart:

	/* Look for a message in receive queue; wait if necessary */

	while (FUNC13(&sk->sk_receive_queue)) {
		if (sock->state == SS_DISCONNECTING) {
			res = -ENOTCONN;
			goto exit;
		}
		if (flags & MSG_DONTWAIT) {
			res = -EWOULDBLOCK;
			goto exit;
		}
		FUNC10(sk);
		res = FUNC17(*sk->sk_sleep,
			(!FUNC13(&sk->sk_receive_queue) ||
			 (sock->state == SS_DISCONNECTING)));
		FUNC6(sk);
		if (res)
			goto exit;
	}

	/* Look at first message in receive queue */

	buf = FUNC12(&sk->sk_receive_queue);
	msg = FUNC3(buf);
	sz = FUNC8(msg);
	err = FUNC9(msg);

	/* Complete connection setup for an implied connect */

	if (FUNC16(sock->state == SS_CONNECTING)) {
		res = FUNC2(sock, msg);
		if (res)
			goto exit;
	}

	/* Discard an empty non-errored message & try again */

	if ((!sz) && (!err)) {
		FUNC0(sk);
		goto restart;
	}

	/* Capture sender's address (optional) */

	FUNC11(m, msg);

	/* Capture ancillary data (optional) */

	res = FUNC1(m, msg, tport);
	if (res)
		goto exit;

	/* Capture message data (if valid) & compute return value (always) */

	if (!err) {
		if (FUNC16(buf_len < sz)) {
			sz = buf_len;
			m->msg_flags |= MSG_TRUNC;
		}
		if (FUNC16(FUNC4(m->msg_iov->iov_base, FUNC7(msg),
					  sz))) {
			res = -EFAULT;
			goto exit;
		}
		res = sz;
	} else {
		if ((sock->state == SS_READY) ||
		    ((err == TIPC_CONN_SHUTDOWN) || m->msg_control))
			res = 0;
		else
			res = -ECONNRESET;
	}

	/* Consume received message (optional) */

	if (FUNC5(!(flags & MSG_PEEK))) {
		if ((sock->state != SS_READY) &&
		    (++tport->conn_unacked >= TIPC_FLOW_CONTROL_WIN))
			FUNC14(tport->ref, tport->conn_unacked);
		FUNC0(sk);
	}
exit:
	FUNC10(sk);
	return res;
}