#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_state; } ;
struct TYPE_5__ {int state; int condition; struct sock* sk; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int AX25_COND_ACK_PENDING ; 
 int AX25_COND_OWN_RX_BUSY ; 
#define  AX25_STATE_0 129 
#define  AX25_STATE_3 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(ax25_cb *ax25)
{
	struct sock *sk=ax25->sk;

	if (sk)
		FUNC3(sk);

	switch (ax25->state) {

	case AX25_STATE_0:
		/* Magic here: If we listen() and a new link dies before it
		   is accepted() it isn't 'dead' so doesn't get removed. */
		if (!sk || FUNC5(sk, SOCK_DESTROY) ||
		    (sk->sk_state == TCP_LISTEN &&
		     FUNC5(sk, SOCK_DEAD))) {
			if (sk) {
				FUNC6(sk);
				FUNC1(ax25);
				FUNC7(sk);
				FUNC4(sk);
			} else
				FUNC1(ax25);
			return;
		}
		break;

	case AX25_STATE_3:
		/*
		 * Check the state of the receive buffer.
		 */
		if (sk != NULL) {
			if (FUNC0(&sk->sk_rmem_alloc) <
			    (sk->sk_rcvbuf >> 1) &&
			    (ax25->condition & AX25_COND_OWN_RX_BUSY)) {
				ax25->condition &= ~AX25_COND_OWN_RX_BUSY;
				ax25->condition &= ~AX25_COND_ACK_PENDING;
				break;
			}
		}
		break;
	}

	if (sk)
		FUNC4(sk);

	FUNC2(ax25);
}