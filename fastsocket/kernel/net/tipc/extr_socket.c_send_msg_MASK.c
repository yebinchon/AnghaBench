#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tipc_port {int /*<<< orphan*/  congested; int /*<<< orphan*/  ref; int /*<<< orphan*/  conn_instance; int /*<<< orphan*/  conn_type; scalar_t__ published; } ;
struct socket {scalar_t__ state; scalar_t__ type; struct sock* sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  domain; TYPE_3__ name; } ;
struct TYPE_5__ {int /*<<< orphan*/  nameseq; int /*<<< orphan*/  id; TYPE_1__ name; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; TYPE_2__ addr; } ;
struct sock {int /*<<< orphan*/ * sk_sleep; } ;
struct msghdr {int msg_namelen; int msg_flags; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_iovlen; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_TIPC ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int EISCONN ; 
 int ELINKCONG ; 
 int EOPNOTSUPP ; 
 int EPIPE ; 
 int EWOULDBLOCK ; 
 int MSG_DONTWAIT ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ SS_CONNECTING ; 
 scalar_t__ SS_LISTENING ; 
 scalar_t__ SS_READY ; 
 scalar_t__ SS_UNCONNECTED ; 
 scalar_t__ TIPC_ADDR_ID ; 
 scalar_t__ TIPC_ADDR_MCAST ; 
 scalar_t__ TIPC_ADDR_NAME ; 
 int FUNC0 (struct sockaddr_tipc*,struct msghdr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_port* FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct kiocb *iocb, struct socket *sock,
		    struct msghdr *m, size_t total_len)
{
	struct sock *sk = sock->sk;
	struct tipc_port *tport = FUNC8(sk);
	struct sockaddr_tipc *dest = (struct sockaddr_tipc *)m->msg_name;
	int needs_conn;
	int res = -EINVAL;

	if (FUNC9(!dest))
		return -EDESTADDRREQ;
	if (FUNC9((m->msg_namelen < sizeof(*dest)) ||
		     (dest->family != AF_TIPC)))
		return -EINVAL;

	if (iocb)
		FUNC2(sk);

	needs_conn = (sock->state != SS_READY);
	if (FUNC9(needs_conn)) {
		if (sock->state == SS_LISTENING) {
			res = -EPIPE;
			goto exit;
		}
		if (sock->state != SS_UNCONNECTED) {
			res = -EISCONN;
			goto exit;
		}
		if ((tport->published) ||
		    ((sock->type == SOCK_STREAM) && (total_len != 0))) {
			res = -EOPNOTSUPP;
			goto exit;
		}
		if (dest->addrtype == TIPC_ADDR_NAME) {
			tport->conn_type = dest->addr.name.name.type;
			tport->conn_instance = dest->addr.name.name.instance;
		}

		/* Abort any pending connection attempts (very unlikely) */

		FUNC3(sk);
	}

	do {
		if (dest->addrtype == TIPC_ADDR_NAME) {
			if ((res = FUNC0(dest, m)))
				break;
			res = FUNC6(tport->ref,
					     &dest->addr.name.name,
					     dest->addr.name.domain,
					     m->msg_iovlen,
					     m->msg_iov);
		}
		else if (dest->addrtype == TIPC_ADDR_ID) {
			res = FUNC7(tport->ref,
					     &dest->addr.id,
					     m->msg_iovlen,
					     m->msg_iov);
		}
		else if (dest->addrtype == TIPC_ADDR_MCAST) {
			if (needs_conn) {
				res = -EOPNOTSUPP;
				break;
			}
			if ((res = FUNC0(dest, m)))
				break;
			res = FUNC5(tport->ref,
					     &dest->addr.nameseq,
					     0,
					     m->msg_iovlen,
					     m->msg_iov);
		}
		if (FUNC1(res != -ELINKCONG)) {
			if (needs_conn && (res >= 0)) {
				sock->state = SS_CONNECTING;
			}
			break;
		}
		if (m->msg_flags & MSG_DONTWAIT) {
			res = -EWOULDBLOCK;
			break;
		}
		FUNC4(sk);
		res = FUNC10(*sk->sk_sleep,
					       !tport->congested);
		FUNC2(sk);
		if (res)
			break;
	} while (1);

exit:
	if (iocb)
		FUNC4(sk);
	return res;
}