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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_state; } ;
struct nr_sock {int /*<<< orphan*/  state; scalar_t__ n2count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_DISCREQ ; 
 int /*<<< orphan*/  NR_STATE_2 ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct nr_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(unsigned long param)
{
	struct sock *sk = (struct sock *)param;
	struct nr_sock *nr = FUNC3(sk);

	FUNC0(sk);

	FUNC2(sk);

	nr->n2count = 0;
	FUNC7(sk, NR_DISCREQ);
	nr->state = NR_STATE_2;

	FUNC4(sk);
	FUNC5(sk);
	FUNC6(sk);

	sk->sk_state     = TCP_CLOSE;
	sk->sk_err       = 0;
	sk->sk_shutdown |= SEND_SHUTDOWN;

	if (!FUNC8(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		FUNC9(sk, SOCK_DEAD);
	}
	FUNC1(sk);
}