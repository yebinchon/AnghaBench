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
struct TYPE_4__ {int /*<<< orphan*/  x25_addr; } ;
struct x25_sock {int /*<<< orphan*/  neighbour; int /*<<< orphan*/  state; int /*<<< orphan*/  dest_addr; TYPE_2__ source_addr; int /*<<< orphan*/  lci; int /*<<< orphan*/  facilities; } ;
struct x25_route {int /*<<< orphan*/  dev; } ;
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_x25 {scalar_t__ sx25_family; int /*<<< orphan*/  sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  x25_addr; } ;

/* Variables and functions */
 scalar_t__ AF_X25 ; 
 int ECONNREFUSED ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENETUNREACH ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 void* SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 void* SS_UNCONNECTED ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  X25_ADDR_LEN ; 
 int /*<<< orphan*/  X25_CALL_REQUEST ; 
 int /*<<< orphan*/  X25_STATE_1 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char,int /*<<< orphan*/ ) ; 
 TYPE_1__ null_x25_address ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct x25_route* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct x25_route*) ; 
 struct x25_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct socket *sock, struct sockaddr *uaddr,
		       int addr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct x25_sock *x25 = FUNC11(sk);
	struct sockaddr_x25 *addr = (struct sockaddr_x25 *)uaddr;
	struct x25_route *rt;
	int rc = 0;

	FUNC0(sk);
	if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {
		sock->state = SS_CONNECTED;
		goto out; /* Connect completed during a ERESTARTSYS event */
	}

	rc = -ECONNREFUSED;
	if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
		sock->state = SS_UNCONNECTED;
		goto out;
	}

	rc = -EISCONN;	/* No reconnect on a seqpacket socket */
	if (sk->sk_state == TCP_ESTABLISHED)
		goto out;

	sk->sk_state   = TCP_CLOSE;
	sock->state = SS_UNCONNECTED;

	rc = -EINVAL;
	if (addr_len != sizeof(struct sockaddr_x25) ||
	    addr->sx25_family != AF_X25)
		goto out;

	rc = -ENETUNREACH;
	rt = FUNC6(&addr->sx25_addr);
	if (!rt)
		goto out;

	x25->neighbour = FUNC5(rt->dev);
	if (!x25->neighbour)
		goto out_put_route;

	FUNC7(&x25->facilities, x25->neighbour);

	x25->lci = FUNC9(x25->neighbour);
	if (!x25->lci)
		goto out_put_neigh;

	rc = -EINVAL;
	if (FUNC3(sk, SOCK_ZAPPED)) /* Must bind first - autobinding does not work */
		goto out_put_neigh;

	if (!FUNC4(x25->source_addr.x25_addr, null_x25_address.x25_addr))
		FUNC1(&x25->source_addr, '\0', X25_ADDR_LEN);

	x25->dest_addr = addr->sx25_addr;

	/* Move to connecting socket, start sending Connect Requests */
	sock->state   = SS_CONNECTING;
	sk->sk_state  = TCP_SYN_SENT;

	x25->state = X25_STATE_1;

	FUNC15(sk, X25_CALL_REQUEST);

	FUNC12(sk);
	FUNC13(sk);

	/* Now the loop */
	rc = -EINPROGRESS;
	if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK))
		goto out_put_neigh;

	rc = FUNC14(sk);
	if (rc)
		goto out_put_neigh;

	sock->state = SS_CONNECTED;
	rc = 0;
out_put_neigh:
	if (rc)
		FUNC8(x25->neighbour);
out_put_route:
	FUNC10(rt);
out:
	FUNC2(sk);
	return rc;
}