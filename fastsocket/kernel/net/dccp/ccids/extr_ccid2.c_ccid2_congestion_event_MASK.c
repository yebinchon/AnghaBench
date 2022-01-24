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
struct sock {int dummy; } ;
struct ccid2_seq {int /*<<< orphan*/  ccid2s_sent; } ;
struct ccid2_hc_tx_sock {unsigned int ccid2hctx_cwnd; int /*<<< orphan*/  ccid2hctx_ssthresh; int /*<<< orphan*/  ccid2hctx_last_cong; } ;
struct TYPE_2__ {int dccps_l_ack_ratio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct ccid2_seq *seqp)
{
	struct ccid2_hc_tx_sock *hctx = FUNC1(sk);

	if (FUNC5(seqp->ccid2s_sent, hctx->ccid2hctx_last_cong)) {
		FUNC2("Multiple losses in an RTT---treating as one\n");
		return;
	}

	hctx->ccid2hctx_last_cong = jiffies;

	hctx->ccid2hctx_cwnd     = hctx->ccid2hctx_cwnd / 2 ? : 1U;
	hctx->ccid2hctx_ssthresh = FUNC4(hctx->ccid2hctx_cwnd, 2U);

	/* Avoid spurious timeouts resulting from Ack Ratio > cwnd */
	if (FUNC3(sk)->dccps_l_ack_ratio > hctx->ccid2hctx_cwnd)
		FUNC0(sk, hctx->ccid2hctx_cwnd);
}