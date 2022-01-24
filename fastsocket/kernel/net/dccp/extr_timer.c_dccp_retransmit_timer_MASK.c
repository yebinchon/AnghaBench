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
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_retransmits; int icsk_rto; int /*<<< orphan*/  icsk_backoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_TIMEOUTS ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCP_RESOURCE_PROBE_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int sysctl_dccp_retries1 ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC4(sk);

	/*
	 * More than than 4MSL (8 minutes) has passed, a RESET(aborted) was
	 * sent, no need to retransmit, this sock is dead.
	 */
	if (FUNC3(sk))
		return;

	/*
	 * We want to know the number of packets retransmitted, not the
	 * total number of retransmissions of clones of original packets.
	 */
	if (icsk->icsk_retransmits == 0)
		FUNC0(DCCP_MIB_TIMEOUTS);

	if (FUNC2(sk) != 0) {
		/*
		 * Retransmission failed because of local congestion,
		 * do not backoff.
		 */
		if (--icsk->icsk_retransmits == 0)
			icsk->icsk_retransmits = 1;
		FUNC5(sk, ICSK_TIME_RETRANS,
					  FUNC6(icsk->icsk_rto,
					      TCP_RESOURCE_PROBE_INTERVAL),
					  DCCP_RTO_MAX);
		return;
	}

	icsk->icsk_backoff++;

	icsk->icsk_rto = FUNC6(icsk->icsk_rto << 1, DCCP_RTO_MAX);
	FUNC5(sk, ICSK_TIME_RETRANS, icsk->icsk_rto,
				  DCCP_RTO_MAX);
	if (icsk->icsk_retransmits > sysctl_dccp_retries1)
		FUNC1(sk);
}