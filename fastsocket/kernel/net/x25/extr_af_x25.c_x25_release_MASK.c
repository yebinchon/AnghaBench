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
struct x25_sock {int state; } ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  X25_CLEAR_REQUEST ; 
#define  X25_STATE_0 132 
#define  X25_STATE_1 131 
#define  X25_STATE_2 130 
#define  X25_STATE_3 129 
#define  X25_STATE_4 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct x25_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct x25_sock *x25;

	if (!sk)
		goto out;

	x25 = FUNC6(sk);

	switch (x25->state) {

		case X25_STATE_0:
		case X25_STATE_2:
			FUNC5(sk, 0, 0, 0);
			FUNC4(sk);
			goto out;

		case X25_STATE_1:
		case X25_STATE_3:
		case X25_STATE_4:
			FUNC3(sk);
			FUNC8(sk, X25_CLEAR_REQUEST);
			FUNC7(sk);
			x25->state = X25_STATE_2;
			sk->sk_state	= TCP_CLOSE;
			sk->sk_shutdown	|= SEND_SHUTDOWN;
			sk->sk_state_change(sk);
			FUNC1(sk, SOCK_DEAD);
			FUNC1(sk, SOCK_DESTROY);
			break;
	}

	FUNC0(sk);
out:
	return 0;
}