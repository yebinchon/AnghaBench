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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;
struct nr_sock {int state; int /*<<< orphan*/  n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_DISCREQ ; 
#define  NR_STATE_0 131 
#define  NR_STATE_1 130 
#define  NR_STATE_2 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct nr_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct nr_sock *nr;

	if (sk == NULL) return 0;

	FUNC11(sk);
	FUNC12(sk);
	FUNC0(sk);
	nr = FUNC4(sk);

	switch (nr->state) {
	case NR_STATE_0:
	case NR_STATE_1:
	case NR_STATE_2:
		FUNC3(sk, 0);
		FUNC2(sk);
		break;

	case NR_STATE_3:
		FUNC1(sk);
		nr->n2count = 0;
		FUNC9(sk, NR_DISCREQ);
		FUNC5(sk);
		FUNC7(sk);
		FUNC8(sk);
		FUNC6(sk);
		nr->state    = NR_STATE_2;
		sk->sk_state    = TCP_CLOSE;
		sk->sk_shutdown |= SEND_SHUTDOWN;
		sk->sk_state_change(sk);
		FUNC14(sk, SOCK_DESTROY);
		break;

	default:
		break;
	}

	sock->sk   = NULL;
	FUNC10(sk);
	FUNC13(sk);

	return 0;
}