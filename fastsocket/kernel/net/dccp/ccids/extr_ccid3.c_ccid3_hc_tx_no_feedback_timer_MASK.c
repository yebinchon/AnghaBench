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
struct ccid3_hc_tx_sock {scalar_t__ ccid3hctx_state; int ccid3hctx_t_rto; scalar_t__ ccid3hctx_p; int ccid3hctx_x; int ccid3hctx_x_calc; int ccid3hctx_x_recv; int ccid3hctx_t_ipi; int /*<<< orphan*/  ccid3hctx_no_feedback_timer; scalar_t__ ccid3hctx_s; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long TFRC_INITIAL_TIMEOUT ; 
 scalar_t__ TFRC_SSTATE_FBACK ; 
 scalar_t__ TFRC_SSTATE_NO_FBACK ; 
 int TFRC_T_MBI ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,scalar_t__) ; 
 struct ccid3_hc_tx_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ccid3_hc_tx_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ jiffies ; 
 void* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (unsigned long) ; 

__attribute__((used)) static void FUNC16(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct ccid3_hc_tx_sock *hctx = FUNC4(sk);
	unsigned long t_nfb = USEC_PER_SEC / 5;

	FUNC1(sk);
	if (FUNC12(sk)) {
		/* Try again later. */
		/* XXX: set some sensible MIB */
		goto restart_timer;
	}

	FUNC6("%s(%p, state=%s) - entry \n", FUNC9(sk), sk,
		       FUNC7(hctx->ccid3hctx_state));

	if (hctx->ccid3hctx_state == TFRC_SSTATE_FBACK)
		FUNC3(sk, TFRC_SSTATE_NO_FBACK);
	else if (hctx->ccid3hctx_state != TFRC_SSTATE_NO_FBACK)
		goto out;

	/*
	 * Determine new allowed sending rate X as per draft rfc3448bis-00, 4.4
	 */
	if (hctx->ccid3hctx_t_rto == 0 ||	/* no feedback received yet */
	    hctx->ccid3hctx_p == 0) {

		/* halve send rate directly */
		hctx->ccid3hctx_x = FUNC10(hctx->ccid3hctx_x / 2,
					(((__u64)hctx->ccid3hctx_s) << 6) /
								    TFRC_T_MBI);
		FUNC8(hctx);
	} else {
		/*
		 *  Modify the cached value of X_recv
		 *
		 *  If (X_calc > 2 * X_recv)
		 *    X_recv = max(X_recv / 2, s / (2 * t_mbi));
		 *  Else
		 *    X_recv = X_calc / 4;
		 *
		 *  Note that X_recv is scaled by 2^6 while X_calc is not
		 */
		FUNC0(hctx->ccid3hctx_p && !hctx->ccid3hctx_x_calc);

		if (hctx->ccid3hctx_x_calc > (hctx->ccid3hctx_x_recv >> 5))
			hctx->ccid3hctx_x_recv =
				FUNC10(hctx->ccid3hctx_x_recv / 2,
				    (((__u64)hctx->ccid3hctx_s) << 6) /
							      (2 * TFRC_T_MBI));
		else {
			hctx->ccid3hctx_x_recv = hctx->ccid3hctx_x_calc;
			hctx->ccid3hctx_x_recv <<= 4;
		}
		FUNC5(sk, NULL);
	}
	FUNC6("Reduced X to %llu/64 bytes/sec\n",
			(unsigned long long)hctx->ccid3hctx_x);

	/*
	 * Set new timeout for the nofeedback timer.
	 * See comments in packet_recv() regarding the value of t_RTO.
	 */
	if (FUNC14(hctx->ccid3hctx_t_rto == 0))	/* no feedback yet */
		t_nfb = TFRC_INITIAL_TIMEOUT;
	else
		t_nfb = FUNC10(hctx->ccid3hctx_t_rto, 2 * hctx->ccid3hctx_t_ipi);

restart_timer:
	FUNC11(sk, &hctx->ccid3hctx_no_feedback_timer,
			   jiffies + FUNC15(t_nfb));
out:
	FUNC2(sk);
	FUNC13(sk);
}