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
struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_probes_out; int icsk_rto; int icsk_backoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int TCP_RTO_MAX ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int sysctl_tcp_retries2 ; 
 int FUNC2 (struct sock*,int const) ; 
 scalar_t__ FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct tcp_sock *tp = FUNC6(sk);
	int max_probes;

	if (tp->packets_out || !FUNC4(sk)) {
		icsk->icsk_probes_out = 0;
		return;
	}

	/* *WARNING* RFC 1122 forbids this
	 *
	 * It doesn't AFAIK, because we kill the retransmit timer -AK
	 *
	 * FIXME: We ought not to do it, Solaris 2.5 actually has fixing
	 * this behaviour in Solaris down as a bug fix. [AC]
	 *
	 * Let me to explain. icsk_probes_out is zeroed by incoming ACKs
	 * even if they advertise zero window. Hence, connection is killed only
	 * if we received no ACKs for normal connection timeout. It is not killed
	 * only because window stays zero for some time, window may be zero
	 * until armageddon and even later. We are in full accordance
	 * with RFCs, only probe timer combines both retransmission timeout
	 * and probe timeout in one bottle.				--ANK
	 */
	max_probes = sysctl_tcp_retries2;

	if (FUNC1(sk, SOCK_DEAD)) {
		const int alive = ((icsk->icsk_rto << icsk->icsk_backoff) < TCP_RTO_MAX);

		max_probes = FUNC2(sk, alive);

		if (FUNC3(sk, alive || icsk->icsk_probes_out <= max_probes))
			return;
	}

	if (icsk->icsk_probes_out > max_probes) {
		FUNC7(sk);
	} else {
		/* Only send another probe if we didn't close things up. */
		FUNC5(sk);
	}
}