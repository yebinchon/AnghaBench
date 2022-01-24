#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ memory; int /*<<< orphan*/  prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int blocked; int pending; int ato; scalar_t__ pingpong; scalar_t__ timeout; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; int /*<<< orphan*/  icsk_rto; int /*<<< orphan*/  icsk_delack_timer; } ;

/* Variables and functions */
 int ICSK_ACK_TIMER ; 
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKLOCKED ; 
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKS ; 
 int /*<<< orphan*/  LINUX_MIB_TCPSCHEDULERFAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_ATO_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_DELACK_MIN ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct inet_connection_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 scalar_t__ tcp_memory_pressure ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 struct tcp_sock* FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC19(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct tcp_sock *tp = FUNC17(sk);
	struct inet_connection_sock *icsk = FUNC5(sk);

	FUNC3(sk);
	if (FUNC14(sk)) {
		/* Try again later. */
		icsk->icsk_ack.blocked = 1;
		FUNC0(FUNC13(sk), LINUX_MIB_DELAYEDACKLOCKED);
		FUNC11(sk, &icsk->icsk_delack_timer, jiffies + TCP_DELACK_MIN);
		goto out_unlock;
	}

	FUNC10(sk);

	if (sk->sk_state == TCP_CLOSE || !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
		goto out;

	if (FUNC18(icsk->icsk_ack.timeout, jiffies)) {
		FUNC11(sk, &icsk->icsk_delack_timer, icsk->icsk_ack.timeout);
		goto out;
	}
	icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

	if (!FUNC12(&tp->ucopy.prequeue)) {
		struct sk_buff *skb;

		FUNC0(FUNC13(sk), LINUX_MIB_TCPSCHEDULERFAILED);

		while ((skb = FUNC2(&tp->ucopy.prequeue)) != NULL)
			FUNC8(sk, skb);

		tp->ucopy.memory = 0;
	}

	if (FUNC6(sk)) {
		if (!icsk->icsk_ack.pingpong) {
			/* Delayed ACK missed: inflate ATO. */
			icsk->icsk_ack.ato = FUNC7(icsk->icsk_ack.ato << 1, icsk->icsk_rto);
		} else {
			/* Delayed ACK missed: leave pingpong mode and
			 * deflate ATO.
			 */
			icsk->icsk_ack.pingpong = 0;
			icsk->icsk_ack.ato      = TCP_ATO_MIN;
		}
		FUNC16(sk);
		FUNC0(FUNC13(sk), LINUX_MIB_DELAYEDACKS);
	}
	FUNC1(sk);

out:
	if (tcp_memory_pressure)
		FUNC9(sk);
out_unlock:
	FUNC4(sk);
	FUNC15(sk);
}