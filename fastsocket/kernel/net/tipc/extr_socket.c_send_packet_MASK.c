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
struct tipc_port {int /*<<< orphan*/  connected; int /*<<< orphan*/  congested; int /*<<< orphan*/  ref; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_tipc {int dummy; } ;
struct sock {int /*<<< orphan*/ * sk_sleep; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_iovlen; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int EWOULDBLOCK ; 
 int MSG_DONTWAIT ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_DISCONNECTING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct kiocb*,struct socket*,struct msghdr*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_port* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct kiocb *iocb, struct socket *sock,
		       struct msghdr *m, size_t total_len)
{
	struct sock *sk = sock->sk;
	struct tipc_port *tport = FUNC5(sk);
	struct sockaddr_tipc *dest = (struct sockaddr_tipc *)m->msg_name;
	int res;

	/* Handle implied connection establishment */

	if (FUNC6(dest))
		return FUNC3(iocb, sock, m, total_len);

	if (iocb)
		FUNC1(sk);

	do {
		if (FUNC6(sock->state != SS_CONNECTED)) {
			if (sock->state == SS_DISCONNECTING)
				res = -EPIPE;
			else
				res = -ENOTCONN;
			break;
		}

		res = FUNC4(tport->ref, m->msg_iovlen, m->msg_iov);
		if (FUNC0(res != -ELINKCONG)) {
			break;
		}
		if (m->msg_flags & MSG_DONTWAIT) {
			res = -EWOULDBLOCK;
			break;
		}
		FUNC2(sk);
		res = FUNC7(*sk->sk_sleep,
			(!tport->congested || !tport->connected));
		FUNC1(sk);
		if (res)
			break;
	} while (1);

	if (iocb)
		FUNC2(sk);
	return res;
}