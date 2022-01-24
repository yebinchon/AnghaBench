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
 int HZ ; 
#define  ICSK_TIME_PROBE0 129 
#define  ICSK_TIME_RETRANS 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct inet_connection_sock *icsk = FUNC3(sk);
	int event;

	FUNC1(sk);
	if (FUNC6(sk)) {
		/* Try again later */
		FUNC5(sk, &icsk->icsk_retransmit_timer, jiffies + (HZ / 20));
		goto out_unlock;
	}

	if (sk->sk_state == TCP_CLOSE || !icsk->icsk_pending)
		goto out;

	if (FUNC10(icsk->icsk_timeout, jiffies)) {
		FUNC5(sk, &icsk->icsk_retransmit_timer, icsk->icsk_timeout);
		goto out;
	}

	event = icsk->icsk_pending;
	icsk->icsk_pending = 0;

	switch (event) {
	case ICSK_TIME_RETRANS:
		FUNC9(sk);
		break;
	case ICSK_TIME_PROBE0:
		FUNC8(sk);
		break;
	}
	FUNC0(sk);

out:
	FUNC4(sk);
out_unlock:
	FUNC2(sk);
	FUNC7(sk);
}