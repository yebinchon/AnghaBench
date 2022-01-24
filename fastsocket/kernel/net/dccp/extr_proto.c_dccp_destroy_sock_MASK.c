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
struct sock {int /*<<< orphan*/ * sk_send_head; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_featneg; int /*<<< orphan*/ * dccps_hc_tx_ccid; int /*<<< orphan*/  dccps_hc_rx_ccid; int /*<<< orphan*/ * dccps_hc_rx_ackvec; int /*<<< orphan*/ * dccps_service_list; } ;
struct TYPE_2__ {int /*<<< orphan*/ * icsk_bind_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct sock *sk)
{
	struct dccp_sock *dp = FUNC4(sk);

	/*
	 * DCCP doesn't use sk_write_queue, just sk_send_head
	 * for retransmissions
	 */
	if (sk->sk_send_head != NULL) {
		FUNC8(sk->sk_send_head);
		sk->sk_send_head = NULL;
	}

	/* Clean up a referenced DCCP bind bucket. */
	if (FUNC5(sk)->icsk_bind_hash != NULL)
		FUNC6(sk);

	FUNC7(dp->dccps_service_list);
	dp->dccps_service_list = NULL;

	if (dp->dccps_hc_rx_ackvec != NULL) {
		FUNC2(dp->dccps_hc_rx_ackvec);
		dp->dccps_hc_rx_ackvec = NULL;
	}
	FUNC0(dp->dccps_hc_rx_ccid, sk);
	FUNC1(dp->dccps_hc_tx_ccid, sk);
	dp->dccps_hc_rx_ccid = *(dp->dccps_hc_tx_ccid = NULL);

	/* clean up feature negotiation state */
	FUNC3(&dp->dccps_featneg);
}