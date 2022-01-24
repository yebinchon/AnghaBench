#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_rose {scalar_t__ srose_family; int srose_ndigis; int /*<<< orphan*/  srose_addr; int /*<<< orphan*/  srose_digi; int /*<<< orphan*/  srose_call; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; } ;
struct rose_sock {int source_ndigis; int dest_ndigis; TYPE_2__* neighbour; int /*<<< orphan*/  state; int /*<<< orphan*/ * dest_digis; scalar_t__ lci; scalar_t__ rand; int /*<<< orphan*/  dest_call; int /*<<< orphan*/  dest_addr; struct net_device* device; int /*<<< orphan*/  source_call; int /*<<< orphan*/  source_addr; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct full_sockaddr_rose {int /*<<< orphan*/ * srose_digis; } ;
struct TYPE_5__ {int /*<<< orphan*/  call; } ;
typedef  TYPE_1__ ax25_uid_assoc ;
struct TYPE_6__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 scalar_t__ AF_ROSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ECONNREFUSED ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENETUNREACH ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  ROSE_ADDR_LEN ; 
 int /*<<< orphan*/  ROSE_CALL_REQUEST ; 
 int ROSE_MAX_DIGIS ; 
 int /*<<< orphan*/  ROSE_STATE_1 ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 void* SS_CONNECTED ; 
 scalar_t__ SS_CONNECTING ; 
 void* SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_SYN_SENT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct net_device* FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 struct rose_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sock*) ; 
 scalar_t__ FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC22(struct socket *sock, struct sockaddr *uaddr, int addr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct rose_sock *rose = FUNC13(sk);
	struct sockaddr_rose *addr = (struct sockaddr_rose *)uaddr;
	unsigned char cause, diagnostic;
	struct net_device *dev;
	ax25_uid_assoc *user;
	int n, err = 0;

	if (addr_len != sizeof(struct sockaddr_rose) && addr_len != sizeof(struct full_sockaddr_rose))
		return -EINVAL;

	if (addr->srose_family != AF_ROSE)
		return -EINVAL;

	if (addr_len == sizeof(struct sockaddr_rose) && addr->srose_ndigis > 1)
		return -EINVAL;

	if (addr->srose_ndigis > ROSE_MAX_DIGIS)
		return -EINVAL;

	/* Source + Destination digis should not exceed ROSE_MAX_DIGIS */
	if ((rose->source_ndigis + addr->srose_ndigis) > ROSE_MAX_DIGIS)
		return -EINVAL;

	FUNC5(sk);

	if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {
		/* Connect completed during a ERESTARTSYS event */
		sock->state = SS_CONNECTED;
		goto out_release;
	}

	if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
		sock->state = SS_UNCONNECTED;
		err = -ECONNREFUSED;
		goto out_release;
	}

	if (sk->sk_state == TCP_ESTABLISHED) {
		/* No reconnect on a seqpacket socket */
		err = -EISCONN;
		goto out_release;
	}

	sk->sk_state   = TCP_CLOSE;
	sock->state = SS_UNCONNECTED;

	rose->neighbour = FUNC10(&addr->srose_addr, &cause,
					 &diagnostic, 0);
	if (!rose->neighbour) {
		err = -ENETUNREACH;
		goto out_release;
	}

	rose->lci = FUNC12(rose->neighbour);
	if (!rose->lci) {
		err = -ENETUNREACH;
		goto out_release;
	}

	if (FUNC20(sk, SOCK_ZAPPED)) {	/* Must bind first - autobinding in this may or may not work */
		FUNC21(sk, SOCK_ZAPPED);

		if ((dev = FUNC9()) == NULL) {
			err = -ENETUNREACH;
			goto out_release;
		}

		user = FUNC1(FUNC3());
		if (!user) {
			err = -EINVAL;
			goto out_release;
		}

		FUNC6(&rose->source_addr, dev->dev_addr, ROSE_ADDR_LEN);
		rose->source_call = user->call;
		rose->device      = dev;
		FUNC2(user);

		FUNC11(sk);		/* Finish the bind */
	}
rose_try_next_neigh:
	rose->dest_addr   = addr->srose_addr;
	rose->dest_call   = addr->srose_call;
	rose->rand        = ((long)rose & 0xFFFF) + rose->lci;
	rose->dest_ndigis = addr->srose_ndigis;

	if (addr_len == sizeof(struct full_sockaddr_rose)) {
		struct full_sockaddr_rose *full_addr = (struct full_sockaddr_rose *)uaddr;
		for (n = 0 ; n < addr->srose_ndigis ; n++)
			rose->dest_digis[n] = full_addr->srose_digis[n];
	} else {
		if (rose->dest_ndigis == 1) {
			rose->dest_digis[0] = addr->srose_digi;
		}
	}

	/* Move to connecting socket, start sending Connect Requests */
	sock->state   = SS_CONNECTING;
	sk->sk_state     = TCP_SYN_SENT;

	rose->state = ROSE_STATE_1;

	rose->neighbour->use++;

	FUNC16(sk, ROSE_CALL_REQUEST);
	FUNC14(sk);
	FUNC15(sk);

	/* Now the loop */
	if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK)) {
		err = -EINPROGRESS;
		goto out_release;
	}

	/*
	 * A Connect Ack with Choke or timeout or failed routing will go to
	 * closed.
	 */
	if (sk->sk_state == TCP_SYN_SENT) {
		FUNC0(wait);

		for (;;) {
			FUNC7(sk->sk_sleep, &wait,
					TASK_INTERRUPTIBLE);
			if (sk->sk_state != TCP_SYN_SENT)
				break;
			if (!FUNC18(current)) {
				FUNC8(sk);
				FUNC17();
				FUNC5(sk);
				continue;
			}
			err = -ERESTARTSYS;
			break;
		}
		FUNC4(sk->sk_sleep, &wait);

		if (err)
			goto out_release;
	}

	if (sk->sk_state != TCP_ESTABLISHED) {
	/* Try next neighbour */
		rose->neighbour = FUNC10(&addr->srose_addr, &cause, &diagnostic, 0);
		if (rose->neighbour)
			goto rose_try_next_neigh;

		/* No more neighbours */
		sock->state = SS_UNCONNECTED;
		err = FUNC19(sk);	/* Always set at this point */
		goto out_release;
	}

	sock->state = SS_CONNECTED;

out_release:
	FUNC8(sk);

	return err;
}