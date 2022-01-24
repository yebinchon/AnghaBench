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
struct ccid2_hc_tx_sock {int ccid2hctx_rto; int ccid2hctx_ssthresh; int ccid2hctx_cwnd; int ccid2hctx_rpdupack; scalar_t__ ccid2hctx_rpseq; scalar_t__ ccid2hctx_packets_acked; int /*<<< orphan*/  ccid2hctx_seqh; int /*<<< orphan*/  ccid2hctx_seqt; scalar_t__ ccid2hctx_pipe; int /*<<< orphan*/  ccid2hctx_rtotimer; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccid2_hc_tx_sock*) ; 
 struct ccid2_hc_tx_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct ccid2_hc_tx_sock *hctx = FUNC4(sk);
	long s;

	FUNC0(sk);
	if (FUNC8(sk)) {
		FUNC7(sk, &hctx->ccid2hctx_rtotimer,
			       jiffies + HZ / 5);
		goto out;
	}

	FUNC5("RTO_EXPIRE\n");

	FUNC3(hctx);

	/* back-off timer */
	hctx->ccid2hctx_rto <<= 1;

	s = hctx->ccid2hctx_rto / HZ;
	if (s > 60)
		hctx->ccid2hctx_rto = 60 * HZ;

	FUNC6(sk);

	/* adjust pipe, cwnd etc */
	hctx->ccid2hctx_ssthresh = hctx->ccid2hctx_cwnd / 2;
	if (hctx->ccid2hctx_ssthresh < 2)
		hctx->ccid2hctx_ssthresh = 2;
	hctx->ccid2hctx_cwnd	 = 1;
	hctx->ccid2hctx_pipe	 = 0;

	/* clear state about stuff we sent */
	hctx->ccid2hctx_seqt = hctx->ccid2hctx_seqh;
	hctx->ccid2hctx_packets_acked = 0;

	/* clear ack ratio state. */
	hctx->ccid2hctx_rpseq	 = 0;
	hctx->ccid2hctx_rpdupack = -1;
	FUNC2(sk, 1);
	FUNC3(hctx);
out:
	FUNC1(sk);
	FUNC9(sk);
}