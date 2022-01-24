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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_l_ack_ratio; int /*<<< orphan*/  dccps_mss_cache; } ;
struct ccid2_hc_tx_sock {unsigned int ccid2hctx_ssthresh; int ccid2hctx_rto; int ccid2hctx_rttvar; int ccid2hctx_rpdupack; int /*<<< orphan*/  ccid2hctx_rtotimer; int /*<<< orphan*/  ccid2hctx_last_cong; int /*<<< orphan*/  ccid2hctx_cwnd; } ;
struct ccid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct ccid2_hc_tx_sock*,int) ; 
 scalar_t__ FUNC2 (struct ccid2_hc_tx_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccid2_hc_tx_sock*) ; 
 int /*<<< orphan*/  ccid2_hc_tx_rto_expire ; 
 struct ccid2_hc_tx_sock* FUNC4 (struct ccid*) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ccid *ccid, struct sock *sk)
{
	struct ccid2_hc_tx_sock *hctx = FUNC4(ccid);
	struct dccp_sock *dp = FUNC5(sk);
	u32 max_ratio;

	/* RFC 4341, 5: initialise ssthresh to arbitrarily high (max) value */
	hctx->ccid2hctx_ssthresh  = ~0U;

	/* Use larger initial windows (RFC 4341, section 5). */
	hctx->ccid2hctx_cwnd = FUNC6(dp->dccps_mss_cache);

	/* Make sure that Ack Ratio is enabled and within bounds. */
	max_ratio = FUNC0(hctx->ccid2hctx_cwnd, 2);
	if (dp->dccps_l_ack_ratio == 0 || dp->dccps_l_ack_ratio > max_ratio)
		dp->dccps_l_ack_ratio = max_ratio;

	/* XXX init ~ to window size... */
	if (FUNC2(hctx))
		return -ENOMEM;

	hctx->ccid2hctx_rto	 = 3 * HZ;
	FUNC1(hctx, -1);
	hctx->ccid2hctx_rttvar	 = -1;
	hctx->ccid2hctx_rpdupack = -1;
	hctx->ccid2hctx_last_cong = jiffies;
	FUNC7(&hctx->ccid2hctx_rtotimer, ccid2_hc_tx_rto_expire,
			(unsigned long)sk);

	FUNC3(hctx);
	return 0;
}