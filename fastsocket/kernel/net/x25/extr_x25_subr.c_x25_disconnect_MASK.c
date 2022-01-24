#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char cause; unsigned char diagnostic; } ;
struct x25_sock {TYPE_1__ causediag; int /*<<< orphan*/  state; scalar_t__ lci; } ;
struct sock {int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  X25_STATE_0 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct x25_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

void FUNC6(struct sock *sk, int reason, unsigned char cause,
		    unsigned char diagnostic)
{
	struct x25_sock *x25 = FUNC4(sk);

	FUNC3(sk);
	FUNC5(sk);

	x25->lci   = 0;
	x25->state = X25_STATE_0;

	x25->causediag.cause      = cause;
	x25->causediag.diagnostic = diagnostic;

	sk->sk_state     = TCP_CLOSE;
	sk->sk_err       = reason;
	sk->sk_shutdown |= SEND_SHUTDOWN;

	if (!FUNC0(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		FUNC1(sk, SOCK_DEAD);
	}
}