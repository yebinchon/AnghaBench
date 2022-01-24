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
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_rx_insert_options; } ;
struct ccid3_hc_rx_sock {scalar_t__ ccid3hcrx_state; unsigned int ccid3hcrx_pinv; scalar_t__ ccid3hcrx_bytes_recv; int /*<<< orphan*/  ccid3hcrx_last_counter; int /*<<< orphan*/  ccid3hcrx_tstamp_last_feedback; int /*<<< orphan*/  ccid3hcrx_x_recv; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum ccid3_fback_type { ____Placeholder_ccid3_fback_type } ccid3_fback_type ;
struct TYPE_2__ {int /*<<< orphan*/  dccph_ccval; } ;

/* Variables and functions */
#define  CCID3_FBACK_INITIAL 130 
#define  CCID3_FBACK_PARAM_CHANGE 129 
#define  CCID3_FBACK_PERIODIC 128 
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 scalar_t__ TFRC_RSTATE_TERM ; 
 struct ccid3_hc_rx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,long,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct sock *sk,
				      const struct sk_buff *skb,
				      enum ccid3_fback_type fbtype)
{
	struct ccid3_hc_rx_sock *hcrx = FUNC1(sk);
	struct dccp_sock *dp = FUNC5(sk);
	ktime_t now;
	s64 delta = 0;

	if (FUNC9(hcrx->ccid3hcrx_state == TFRC_RSTATE_TERM))
		return;

	now = FUNC6();

	switch (fbtype) {
	case CCID3_FBACK_INITIAL:
		hcrx->ccid3hcrx_x_recv = 0;
		hcrx->ccid3hcrx_pinv   = ~0U;   /* see RFC 4342, 8.5 */
		break;
	case CCID3_FBACK_PARAM_CHANGE:
		/*
		 * When parameters change (new loss or p > p_prev), we do not
		 * have a reliable estimate for R_m of [RFC 3448, 6.2] and so
		 * need to  reuse the previous value of X_recv. However, when
		 * X_recv was 0 (due to early loss), this would kill X down to
		 * s/t_mbi (i.e. one packet in 64 seconds).
		 * To avoid such drastic reduction, we approximate X_recv as
		 * the number of bytes since last feedback.
		 * This is a safe fallback, since X is bounded above by X_calc.
		 */
		if (hcrx->ccid3hcrx_x_recv > 0)
			break;
		/* fall through */
	case CCID3_FBACK_PERIODIC:
		delta = FUNC7(now, hcrx->ccid3hcrx_tstamp_last_feedback);
		if (delta <= 0)
			FUNC0("delta (%ld) <= 0", (long)delta);
		else
			hcrx->ccid3hcrx_x_recv =
				FUNC8(hcrx->ccid3hcrx_bytes_recv, delta);
		break;
	default:
		return;
	}

	FUNC2("Interval %ldusec, X_recv=%u, 1/p=%u\n", (long)delta,
		       hcrx->ccid3hcrx_x_recv, hcrx->ccid3hcrx_pinv);

	hcrx->ccid3hcrx_tstamp_last_feedback = now;
	hcrx->ccid3hcrx_last_counter	     = FUNC3(skb)->dccph_ccval;
	hcrx->ccid3hcrx_bytes_recv	     = 0;

	dp->dccps_hc_rx_insert_options = 1;
	FUNC4(sk);
}