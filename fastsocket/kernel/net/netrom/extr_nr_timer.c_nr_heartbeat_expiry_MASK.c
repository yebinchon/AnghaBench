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
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_state; } ;
struct nr_sock {int state; int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; } ;

/* Variables and functions */
 int NR_COND_ACK_PENDING ; 
 int NR_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  NR_INFOACK ; 
#define  NR_STATE_0 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct nr_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(unsigned long param)
{
	struct sock *sk = (struct sock *)param;
	struct nr_sock *nr = FUNC4(sk);

	FUNC1(sk);
	switch (nr->state) {
	case NR_STATE_0:
		/* Magic here: If we listen() and a new link dies before it
		   is accepted() it isn't 'dead' so doesn't get removed. */
		if (FUNC7(sk, SOCK_DESTROY) ||
		    (sk->sk_state == TCP_LISTEN && FUNC7(sk, SOCK_DEAD))) {
			FUNC8(sk);
			FUNC2(sk);
			FUNC3(sk);
			FUNC9(sk);
			return;
		}
		break;

	case NR_STATE_3:
		/*
		 * Check for the state of the receive buffer.
		 */
		if (FUNC0(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf / 2) &&
		    (nr->condition & NR_COND_OWN_RX_BUSY)) {
			nr->condition &= ~NR_COND_OWN_RX_BUSY;
			nr->condition &= ~NR_COND_ACK_PENDING;
			nr->vl         = nr->vr;
			FUNC6(sk, NR_INFOACK);
			break;
		}
		break;
	}

	FUNC5(sk);
	FUNC2(sk);
}