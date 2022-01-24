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
struct tcp_info {int /*<<< orphan*/  tcpi_options; int /*<<< orphan*/  tcpi_pmtu; int /*<<< orphan*/  tcpi_backoff; int /*<<< orphan*/  tcpi_probes; int /*<<< orphan*/  tcpi_retransmits; int /*<<< orphan*/  tcpi_state; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/  icsk_backoff; int /*<<< orphan*/  icsk_probes_out; int /*<<< orphan*/  icsk_retransmits; } ;
struct dccp_sock {int /*<<< orphan*/ * dccps_hc_tx_ccid; int /*<<< orphan*/ * dccps_hc_rx_ccid; int /*<<< orphan*/ * dccps_hc_rx_ackvec; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPI_OPT_SACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sock*,struct tcp_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*,struct tcp_info*) ; 
 struct dccp_sock* FUNC2 (struct sock*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct tcp_info *info)
{
	struct dccp_sock *dp = FUNC2(sk);
	const struct inet_connection_sock *icsk = FUNC3(sk);

	FUNC4(info, 0, sizeof(*info));

	info->tcpi_state	= sk->sk_state;
	info->tcpi_retransmits	= icsk->icsk_retransmits;
	info->tcpi_probes	= icsk->icsk_probes_out;
	info->tcpi_backoff	= icsk->icsk_backoff;
	info->tcpi_pmtu		= icsk->icsk_pmtu_cookie;

	if (dp->dccps_hc_rx_ackvec != NULL)
		info->tcpi_options |= TCPI_OPT_SACK;

	if (dp->dccps_hc_rx_ccid != NULL)
		FUNC0(dp->dccps_hc_rx_ccid, sk, info);

	if (dp->dccps_hc_tx_ccid != NULL)
		FUNC1(dp->dccps_hc_tx_ccid, sk, info);
}