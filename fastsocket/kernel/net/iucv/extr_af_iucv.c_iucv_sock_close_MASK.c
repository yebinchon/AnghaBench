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
struct sock {int sk_state; unsigned long sk_lingertime; scalar_t__ sk_bound_dev_if; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct iucv_sock {int /*<<< orphan*/ * hs_dev; int /*<<< orphan*/  backlog_skb_q; int /*<<< orphan*/  send_skb_q; int /*<<< orphan*/  transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IUCV_FLAG_FIN ; 
 int /*<<< orphan*/  AF_IUCV_TRANS_HIPER ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int IUCV_CLOSED ; 
#define  IUCV_CLOSING 131 
#define  IUCV_CONNECTED 130 
#define  IUCV_DISCONN 129 
 unsigned long IUCV_DISCONN_TIMEOUT ; 
#define  IUCV_LISTEN 128 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 struct iucv_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 

__attribute__((used)) static void FUNC18(struct sock *sk)
{
	struct iucv_sock *iucv = FUNC3(sk);
	unsigned long timeo;
	int err = 0;

	FUNC5(sk);
	FUNC8(sk);

	switch (sk->sk_state) {
	case IUCV_LISTEN:
		FUNC4(sk);
		break;

	case IUCV_CONNECTED:
		if (iucv->transport == AF_IUCV_TRANS_HIPER) {
			/* send fin */
			err = FUNC1(sk, AF_IUCV_FLAG_FIN);
			sk->sk_state = IUCV_DISCONN;
			sk->sk_state_change(sk);
		}
	case IUCV_DISCONN:   /* fall through */
		sk->sk_state = IUCV_CLOSING;
		sk->sk_state_change(sk);

		if (!err && !FUNC10(&iucv->send_skb_q)) {
			if (FUNC12(sk, SOCK_LINGER) && sk->sk_lingertime)
				timeo = sk->sk_lingertime;
			else
				timeo = IUCV_DISCONN_TIMEOUT;
			err = FUNC7(sk,
					FUNC6(sk, IUCV_CLOSED, 0),
					timeo);
		}

	case IUCV_CLOSING:   /* fall through */
		sk->sk_state = IUCV_CLOSED;
		sk->sk_state_change(sk);

		sk->sk_err = ECONNRESET;
		sk->sk_state_change(sk);

		FUNC11(&iucv->send_skb_q);
		FUNC11(&iucv->backlog_skb_q);

	default:   /* fall through */
		FUNC2(sk, 1);
	}

	if (iucv->hs_dev) {
		FUNC0(iucv->hs_dev);
		iucv->hs_dev = NULL;
		sk->sk_bound_dev_if = 0;
	}

	/* mark socket for deletion by iucv_sock_kill() */
	FUNC13(sk, SOCK_ZAPPED);

	FUNC9(sk);
}