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
struct socket {struct sock* sk; } ;
struct sockaddr_iucv {int /*<<< orphan*/  siucv_name; int /*<<< orphan*/  siucv_user_id; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct iucv_sock {scalar_t__ transport; int /*<<< orphan*/  dst_name; int /*<<< orphan*/  dst_user_id; } ;

/* Variables and functions */
 scalar_t__ AF_IUCV ; 
 int /*<<< orphan*/  AF_IUCV_FLAG_SYN ; 
 scalar_t__ AF_IUCV_TRANS_HIPER ; 
 scalar_t__ AF_IUCV_TRANS_IUCV ; 
 int EBADFD ; 
 int ECONNREFUSED ; 
 int EINVAL ; 
 scalar_t__ IUCV_BOUND ; 
 scalar_t__ IUCV_CLOSED ; 
 scalar_t__ IUCV_CONNECTED ; 
 scalar_t__ IUCV_DISCONN ; 
 scalar_t__ IUCV_OPEN ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC0 (struct socket*,struct sockaddr*) ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct iucv_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct sockaddr *addr,
			     int alen, int flags)
{
	struct sockaddr_iucv *sa = (struct sockaddr_iucv *) addr;
	struct sock *sk = sock->sk;
	struct iucv_sock *iucv = FUNC3(sk);
	int err;

	if (addr->sa_family != AF_IUCV || alen < sizeof(struct sockaddr_iucv))
		return -EINVAL;

	if (sk->sk_state != IUCV_OPEN && sk->sk_state != IUCV_BOUND)
		return -EBADFD;

	if (sk->sk_state == IUCV_OPEN &&
	    iucv->transport == AF_IUCV_TRANS_HIPER)
		return -EBADFD; /* explicit bind required */

	if (sk->sk_type != SOCK_STREAM && sk->sk_type != SOCK_SEQPACKET)
		return -EINVAL;

	if (sk->sk_state == IUCV_OPEN) {
		err = FUNC4(sk);
		if (FUNC11(err))
			return err;
	}

	FUNC7(sk);

	/* Set the destination information */
	FUNC8(iucv->dst_user_id, sa->siucv_user_id, 8);
	FUNC8(iucv->dst_name, sa->siucv_name, 8);

	if (iucv->transport == AF_IUCV_TRANS_HIPER)
		err = FUNC1(sk, AF_IUCV_FLAG_SYN);
	else
		err = FUNC0(sock, addr);
	if (err)
		goto done;

	if (sk->sk_state != IUCV_CONNECTED)
		err = FUNC6(sk, FUNC5(sk, IUCV_CONNECTED,
							    IUCV_DISCONN),
				     FUNC10(sk, flags & O_NONBLOCK));

	if (sk->sk_state == IUCV_DISCONN || sk->sk_state == IUCV_CLOSED)
		err = -ECONNREFUSED;

	if (err && iucv->transport == AF_IUCV_TRANS_IUCV)
		FUNC2(sk, 0);

done:
	FUNC9(sk);
	return err;
}