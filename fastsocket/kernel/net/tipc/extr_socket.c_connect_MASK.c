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
struct tipc_msg {int dummy; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_tipc {scalar_t__ addrtype; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_rcvtimeo; int /*<<< orphan*/ * sk_sleep; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_namelen; struct sockaddr* msg_name; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int EALREADY ; 
 int ECONNREFUSED ; 
 int EINVAL ; 
 int EISCONN ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_DISCONNECTING ; 
 scalar_t__ SS_LISTENING ; 
 scalar_t__ SS_READY ; 
 scalar_t__ SS_UNCONNECTED ; 
 scalar_t__ TIPC_ADDR_MCAST ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (struct socket*,struct tipc_msg*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct socket*,struct msghdr*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct socket *sock, struct sockaddr *dest, int destlen,
		   int flags)
{
	struct sock *sk = sock->sk;
	struct sockaddr_tipc *dst = (struct sockaddr_tipc *)dest;
	struct msghdr m = {NULL,};
	struct sk_buff *buf;
	struct tipc_msg *msg;
	int res;

	FUNC3(sk);

	/* For now, TIPC does not allow use of connect() with DGRAM/RDM types */

	if (sock->state == SS_READY) {
		res = -EOPNOTSUPP;
		goto exit;
	}

	/* For now, TIPC does not support the non-blocking form of connect() */

	if (flags & O_NONBLOCK) {
		res = -EWOULDBLOCK;
		goto exit;
	}

	/* Issue Posix-compliant error code if socket is in the wrong state */

	if (sock->state == SS_LISTENING) {
		res = -EOPNOTSUPP;
		goto exit;
	}
	if (sock->state == SS_CONNECTING) {
		res = -EALREADY;
		goto exit;
	}
	if (sock->state != SS_UNCONNECTED) {
		res = -EISCONN;
		goto exit;
	}

	/*
	 * Reject connection attempt using multicast address
	 *
	 * Note: send_msg() validates the rest of the address fields,
	 *       so there's no need to do it here
	 */

	if (dst->addrtype == TIPC_ADDR_MCAST) {
		res = -EINVAL;
		goto exit;
	}

	/* Reject any messages already in receive queue (very unlikely) */

	FUNC5(sk);

	/* Send a 'SYN-' to destination */

	m.msg_name = dest;
	m.msg_namelen = destlen;
	res = FUNC7(NULL, sock, &m, 0);
	if (res < 0) {
		goto exit;
	}

	/* Wait until an 'ACK' or 'RST' arrives, or a timeout occurs */

	FUNC6(sk);
	res = FUNC10(*sk->sk_sleep,
			(!FUNC9(&sk->sk_receive_queue) ||
			(sock->state != SS_CONNECTING)),
			sk->sk_rcvtimeo);
	FUNC3(sk);

	if (res > 0) {
		buf = FUNC8(&sk->sk_receive_queue);
		if (buf != NULL) {
			msg = FUNC2(buf);
			res = FUNC1(sock, msg);
			if (!res) {
				if (!FUNC4(msg))
					FUNC0(sk);
			}
		} else {
			if (sock->state == SS_CONNECTED) {
				res = -EISCONN;
			} else {
				res = -ECONNREFUSED;
			}
		}
	} else {
		if (res == 0)
			res = -ETIMEDOUT;
		else
			; /* leave "res" unchanged */
		sock->state = SS_DISCONNECTING;
	}

exit:
	FUNC6(sk);
	return res;
}