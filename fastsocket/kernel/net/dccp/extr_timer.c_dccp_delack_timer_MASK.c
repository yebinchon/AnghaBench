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
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int blocked; int pending; int ato; scalar_t__ pingpong; scalar_t__ timeout; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; int /*<<< orphan*/  icsk_rto; int /*<<< orphan*/  icsk_delack_timer; } ;

/* Variables and functions */
 scalar_t__ DCCP_CLOSED ; 
 int ICSK_ACK_TIMER ; 
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKLOCKED ; 
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_ATO_MIN ; 
 scalar_t__ TCP_DELACK_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct inet_connection_sock *icsk = FUNC4(sk);

	FUNC1(sk);
	if (FUNC9(sk)) {
		/* Try again later. */
		icsk->icsk_ack.blocked = 1;
		FUNC0(FUNC8(sk), LINUX_MIB_DELAYEDACKLOCKED);
		FUNC7(sk, &icsk->icsk_delack_timer,
			       jiffies + TCP_DELACK_MIN);
		goto out;
	}

	if (sk->sk_state == DCCP_CLOSED ||
	    !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
		goto out;
	if (FUNC11(icsk->icsk_ack.timeout, jiffies)) {
		FUNC7(sk, &icsk->icsk_delack_timer,
			       icsk->icsk_ack.timeout);
		goto out;
	}

	icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

	if (FUNC5(sk)) {
		if (!icsk->icsk_ack.pingpong) {
			/* Delayed ACK missed: inflate ATO. */
			icsk->icsk_ack.ato = FUNC6(icsk->icsk_ack.ato << 1,
						 icsk->icsk_rto);
		} else {
			/* Delayed ACK missed: leave pingpong mode and
			 * deflate ATO.
			 */
			icsk->icsk_ack.pingpong = 0;
			icsk->icsk_ack.ato = TCP_ATO_MIN;
		}
		FUNC3(sk);
		FUNC0(FUNC8(sk), LINUX_MIB_DELAYEDACKS);
	}
out:
	FUNC2(sk);
	FUNC10(sk);
}