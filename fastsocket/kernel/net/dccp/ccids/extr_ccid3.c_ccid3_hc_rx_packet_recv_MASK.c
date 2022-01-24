#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct ccid3_hc_rx_sock {scalar_t__ ccid3hcrx_state; scalar_t__ ccid3hcrx_s; scalar_t__ ccid3hcrx_rtt; int /*<<< orphan*/  ccid3hcrx_hist; int /*<<< orphan*/  ccid3hcrx_last_counter; int /*<<< orphan*/  ccid3hcrx_li_hist; int /*<<< orphan*/  ccid3hcrx_bytes_recv; } ;
typedef  enum ccid3_fback_type { ____Placeholder_ccid3_fback_type } ccid3_fback_type ;
struct TYPE_6__ {int dccph_doff; int /*<<< orphan*/  dccph_ccval; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccpor_ndp; } ;
struct TYPE_5__ {TYPE_1__ dccps_options_received; } ;

/* Variables and functions */
 int CCID3_FBACK_INITIAL ; 
 int CCID3_FBACK_NONE ; 
 int CCID3_FBACK_PARAM_CHANGE ; 
 int CCID3_FBACK_PERIODIC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TFRC_RSTATE_DATA ; 
 scalar_t__ TFRC_RSTATE_NO_DATA ; 
 int /*<<< orphan*/  ccid3_first_li ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct ccid3_hc_rx_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sk_buff*) ; 
 TYPE_3__* FUNC5 (struct sk_buff*) ; 
 TYPE_2__* FUNC6 (struct sock*) ; 
 void* FUNC7 (scalar_t__,scalar_t__ const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct ccid3_hc_rx_sock *hcrx = FUNC3(sk);
	enum ccid3_fback_type do_feedback = CCID3_FBACK_NONE;
	const u64 ndp = FUNC6(sk)->dccps_options_received.dccpor_ndp;
	const bool is_data_packet = FUNC4(skb);

	if (FUNC15(hcrx->ccid3hcrx_state == TFRC_RSTATE_NO_DATA)) {
		if (is_data_packet) {
			const u32 payload = skb->len - FUNC5(skb)->dccph_doff * 4;
			do_feedback = CCID3_FBACK_INITIAL;
			FUNC2(sk, TFRC_RSTATE_DATA);
			hcrx->ccid3hcrx_s = payload;
			/*
			 * Not necessary to update ccid3hcrx_bytes_recv here,
			 * since X_recv = 0 for the first feedback packet (cf.
			 * RFC 3448, 6.3) -- gerrit
			 */
		}
		goto update_records;
	}

	if (FUNC12(&hcrx->ccid3hcrx_hist, skb))
		return; /* done receiving */

	if (is_data_packet) {
		const u32 payload = skb->len - FUNC5(skb)->dccph_doff * 4;
		/*
		 * Update moving-average of s and the sum of received payload bytes
		 */
		hcrx->ccid3hcrx_s = FUNC7(hcrx->ccid3hcrx_s, payload, 9);
		hcrx->ccid3hcrx_bytes_recv += payload;
	}

	/*
	 * Perform loss detection and handle pending losses
	 */
	if (FUNC10(&hcrx->ccid3hcrx_hist, &hcrx->ccid3hcrx_li_hist,
				skb, ndp, ccid3_first_li, sk)) {
		do_feedback = CCID3_FBACK_PARAM_CHANGE;
		goto done_receiving;
	}

	if (FUNC13(&hcrx->ccid3hcrx_hist))
		return; /* done receiving */

	/*
	 * Handle data packets: RTT sampling and monitoring p
	 */
	if (FUNC15(!is_data_packet))
		goto update_records;

	if (!FUNC8(&hcrx->ccid3hcrx_li_hist)) {
		const u32 sample = FUNC14(&hcrx->ccid3hcrx_hist, skb);
		/*
		 * Empty loss history: no loss so far, hence p stays 0.
		 * Sample RTT values, since an RTT estimate is required for the
		 * computation of p when the first loss occurs; RFC 3448, 6.3.1.
		 */
		if (sample != 0)
			hcrx->ccid3hcrx_rtt = FUNC7(hcrx->ccid3hcrx_rtt, sample, 9);

	} else if (FUNC9(&hcrx->ccid3hcrx_li_hist, skb)) {
		/*
		 * Step (3) of [RFC 3448, 6.1]: Recompute I_mean and, if I_mean
		 * has decreased (resp. p has increased), send feedback now.
		 */
		do_feedback = CCID3_FBACK_PARAM_CHANGE;
	}

	/*
	 * Check if the periodic once-per-RTT feedback is due; RFC 4342, 10.3
	 */
	if (FUNC0(FUNC5(skb)->dccph_ccval, hcrx->ccid3hcrx_last_counter) > 3)
		do_feedback = CCID3_FBACK_PERIODIC;

update_records:
	FUNC11(&hcrx->ccid3hcrx_hist, skb, ndp);

done_receiving:
	if (do_feedback)
		FUNC1(sk, skb, do_feedback);
}