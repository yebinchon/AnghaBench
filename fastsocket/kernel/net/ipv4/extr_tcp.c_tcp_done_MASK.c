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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_ATTEMPTFAILS ; 
 scalar_t__ TCP_SYN_RECV ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sock *sk)
{
	if (sk->sk_state == TCP_SYN_SENT || sk->sk_state == TCP_SYN_RECV)
		FUNC0(FUNC3(sk), TCP_MIB_ATTEMPTFAILS);

	FUNC6(sk, TCP_CLOSE);
	FUNC5(sk);

	sk->sk_shutdown = SHUTDOWN_MASK;

	if (!FUNC2(sk, SOCK_DEAD))
		sk->sk_state_change(sk);
	else
		FUNC1(sk);
}