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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROSE_CLEAR_REQUEST ; 
 int /*<<< orphan*/  ROSE_STATE_2 ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(unsigned long param)
{
	struct sock *sk = (struct sock *)param;

	FUNC0(sk);
	FUNC2(sk);

	FUNC5(sk, ROSE_CLEAR_REQUEST);
	FUNC3(sk)->state = ROSE_STATE_2;

	FUNC4(sk);

	sk->sk_state     = TCP_CLOSE;
	sk->sk_err       = 0;
	sk->sk_shutdown |= SEND_SHUTDOWN;

	if (!FUNC6(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		FUNC7(sk, SOCK_DEAD);
	}
	FUNC1(sk);
}