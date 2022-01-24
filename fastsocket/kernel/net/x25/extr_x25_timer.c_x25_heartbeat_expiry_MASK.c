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
struct sock {int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
#define  X25_STATE_0 129 
#define  X25_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(unsigned long param)
{
	struct sock *sk = (struct sock *)param;

	FUNC0(sk);
	if (FUNC3(sk)) /* can currently only occur in state 3 */
		goto restart_heartbeat;

	switch (FUNC6(sk)->state) {

		case X25_STATE_0:
			/*
			 * Magic here: If we listen() and a new link dies
			 * before it is accepted() it isn't 'dead' so doesn't
			 * get removed.
			 */
			if (FUNC2(sk, SOCK_DESTROY) ||
			    (sk->sk_state == TCP_LISTEN &&
			     FUNC2(sk, SOCK_DEAD))) {
				FUNC1(sk);
				FUNC5(sk);
				return;
			}
			break;

		case X25_STATE_3:
			/*
			 * Check for the state of the receive buffer.
			 */
			FUNC4(sk);
			break;
	}
restart_heartbeat:
	FUNC7(sk);
	FUNC1(sk);
}