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
typedef  int u32 ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int len; } ;
struct dccp_sock {int dccps_mss_cache; int /*<<< orphan*/  dccps_hc_tx_ccid; int /*<<< orphan*/  dccps_featneg; int /*<<< orphan*/  dccps_xmit_timer; } ;
struct dccp_skb_cb {void* dccpd_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DCCP_FEATNEG_OVERHEAD ; 
 scalar_t__ DCCP_PARTOPEN ; 
 void* DCCP_PKT_DATA ; 
 void* DCCP_PKT_DATAACK ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 struct dccp_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const) ; 
 int EINTR ; 
 int /*<<< orphan*/  ICSK_TIME_DACK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ,int const) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct dccp_sock* FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,int) ; 
 TYPE_1__* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC20 (int /*<<< orphan*/ *) ; 

void FUNC21(struct sock *sk, int block)
{
	struct dccp_sock *dp = FUNC9(sk);
	struct sk_buff *skb;

	while ((skb = FUNC20(&sk->sk_write_queue))) {
		int err = FUNC4(dp->dccps_hc_tx_ccid, sk, skb);

		if (err > 0) {
			if (!block) {
				FUNC18(sk, &dp->dccps_xmit_timer,
						FUNC17(err)+jiffies);
				break;
			} else
				err = FUNC11(sk, skb, err);
			if (err && err != -EINTR)
				FUNC0("err=%d after dccp_wait_for_ccid", err);
		}

		FUNC19(&sk->sk_write_queue);
		if (err == 0) {
			struct dccp_skb_cb *dcb = FUNC1(skb);
			const int len = skb->len;

			if (sk->sk_state == DCCP_PARTOPEN) {
				const u32 cur_mps = dp->dccps_mss_cache - DCCP_FEATNEG_OVERHEAD;
				/*
				 * See 8.1.5 - Handshake Completion.
				 *
				 * For robustness we resend Confirm options until the client has
				 * entered OPEN. During the initial feature negotiation, the MPS
				 * is smaller than usual, reduced by the Change/Confirm options.
				 */
				if (!FUNC16(&dp->dccps_featneg) && len > cur_mps) {
					FUNC2("Payload too large (%d) for featneg.\n", len);
					FUNC8(sk);
					FUNC6(&dp->dccps_featneg);
				}

				FUNC14(sk);
				FUNC13(sk, ICSK_TIME_DACK,
						  FUNC12(sk)->icsk_rto,
						  DCCP_RTO_MAX);
				dcb->dccpd_type = DCCP_PKT_DATAACK;
			} else if (FUNC5(sk))
				dcb->dccpd_type = DCCP_PKT_DATAACK;
			else
				dcb->dccpd_type = DCCP_PKT_DATA;

			err = FUNC10(sk, skb);
			FUNC3(dp->dccps_hc_tx_ccid, sk, 0, len);
			if (err)
				FUNC0("err=%d after ccid_hc_tx_packet_sent",
					 err);
		} else {
			FUNC7("packet discarded due to err=%d\n", err);
			FUNC15(skb);
		}
	}
}