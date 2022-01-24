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
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int icsk_pending; scalar_t__ icsk_timeout; int /*<<< orphan*/  icsk_retransmit_timer; } ;

/* Variables and functions */
 scalar_t__ DCCP_CLOSED ; 
 int HZ ; 
#define  ICSK_TIME_RETRANS 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct inet_connection_sock *icsk = FUNC3(sk);
	int event = 0;

	FUNC0(sk);
	if (FUNC5(sk)) {
		/* Try again later */
		FUNC4(sk, &icsk->icsk_retransmit_timer,
			       jiffies + (HZ / 20));
		goto out;
	}

	if (sk->sk_state == DCCP_CLOSED || !icsk->icsk_pending)
		goto out;

	if (FUNC7(icsk->icsk_timeout, jiffies)) {
		FUNC4(sk, &icsk->icsk_retransmit_timer,
			       icsk->icsk_timeout);
		goto out;
	}

	event = icsk->icsk_pending;
	icsk->icsk_pending = 0;

	switch (event) {
	case ICSK_TIME_RETRANS:
		FUNC2(sk);
		break;
	}
out:
	FUNC1(sk);
	FUNC6(sk);
}